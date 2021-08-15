#! /usr/bin/lua

local function test(b)
    local a = 3;
    local function closure_fun() --闭包函数
        print(a + b);
    end

    closure_fun();

end

test(2);