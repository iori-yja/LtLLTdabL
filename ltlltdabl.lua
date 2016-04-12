#!/usr/bin/lua
-- LuaLaTeX Builder in Lua
local inotify = require 'inotify'

function build (doc)
	make_doc_and_flist = "mkjobtexmf --jobname " .. doc .. " --cmd-tex lualatex"
	os.execute(make_doc_and_flist)
	os.execute("bibtex " .. doc)
	os.execute(make_doc_and_flist)
end

local main_doc = arg[1]
if main_doc == nil then
	main_doc = "main"
end

while true do
	build(main_doc)
	local watchlist = inotify.init()
	for x in io.lines(main_doc .. ".fls") do
		local y = x:match("INPUT (.*)")
		if y ~= nil then
			watchlist:addwatch(y, inotify.IN_MODIFY)
		end
	end
	watchlist:read()
end

