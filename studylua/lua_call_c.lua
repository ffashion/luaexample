#! /usr/bin/lua
-- 使用lua 调用C

local path = "/home/fashion/project/luaexample/studylua/mylib.so";

local f = package.loadlib(path,"add")
f(1,2);

