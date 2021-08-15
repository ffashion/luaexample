#! /usr/bin/lua
local function onef()
    print("hello world")
end

local co = coroutine.create(onef);

print(coroutine.status(co)) --看协程的状态

coroutine.resume(co, ...) --执行协程
coroutine.resume(co, ...) --不能重复执行 不会输出

local f = coroutine.wrap(onef)
f() --每次调用一次这个函数 就会调用create(onef)和resume(co, ...)
