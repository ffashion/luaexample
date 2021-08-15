#! /usr/bin/lua 
-- lua的表是一种万能多数据类型 支持数组 字典(字典是Hash表的一种实现)


local table = {}

local function test()
    print("hello world1");
end

table[1] = test;

table.hello = function ()
    print("hello world2");
end

table.hello();
table[1]()

-- local v = table;
-- for i = 1, 10000000, 1 do
--     local v = {v}
--     -- print(type(v))
--     print(i);
-- end

table["fuck"] = "aaa"


print(#table) -- #只计算下标使用数字的


table.onef = function (this,one)
    print(one);
end

function table:twof(one)
    self.hello()
    print(one);
end


table.onef(table,1);

table:onef(1);

table.twof(table,1);
table:twof(1);