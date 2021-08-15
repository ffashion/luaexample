#! /usr/bin/lua
-- while
local while0 = 3;
while true do
    if while0>=10 then
        break;
    end
    print(while0);
    while0 = while0 + 1;
end

-- 数值for循环 
for for0 = 1, 10, 2 do
    print("hello world")
end

-- 泛型for循环
local for1 = {"hello","world"};

--  ipairs返回的第一个是迭代对象方法 然后是index 和 value
--  将返回的index 和 value 作为参数 给迭代对象方法调用
--  迭代方法的返回值 赋值给index 和 value
for index, value in ipairs(for1) do
    print(index,value);
end



local repeat0 = 1;
repeat
    repeat0 = repeat0 +1;
    print("repeat0:",repeat0);
until repeat0>3