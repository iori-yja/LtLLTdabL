package = "lualatex_buildtool"
version = "-1"
source = {
   url = "*** please add URL for source tarball, zip or repository here ***",
   tag = "v"
}
description = {
   summary = "LtLLTdabL: Loopie tool for LuaLaTex document auto building in Lua — Edit",
   detailed = "This tool monitors files that are used by LuaLaTeX command, and if these are modified, rebuild the document.",
   homepage = "https://github.com/iori-yja/LtLLTdabL/",
   license = "MIT"
}
dependencies = {
   "lua >= 5.2, < 5.4"
}
build = {
   type = "builtin",
   modules = {
      build = "build.lua"
   }
}
