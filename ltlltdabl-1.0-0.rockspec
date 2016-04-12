package = "ltlltdabl"
version = "1.0-0"
source = {
   url = "git://github.com/iori-yja/LtLLTdabL/",
   tag = "v"
}
description = {
   summary = "LtLLTdabL: Loopie tool for LuaLaTex document auto building in Lua — Edit",
   detailed = "This tool monitors files that are used by LuaLaTeX command, and if these are modified, rebuild the document.",
   homepage = "https://github.com/iori-yja/LtLLTdabL/",
   license = "MIT"
}
dependencies = {
   "lua >= 5.2",
	 "inotify >= 0.2"
}
build = {
   type = "builtin",
   modules = {
      build = "ltlltdabl.lua"
   }
}
