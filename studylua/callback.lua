#! /usr/bin/lua
local function cb()
    print("hello world");
end


local function test(cb)
    cb();
end

test(cb);
