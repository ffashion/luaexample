#! /usr/bin/lua

local file = io.open("my.txt","a+");

-- file:write("hell world");


-- 读取一个数字 并返回
file:seek("set"); -- 设置从头开始 还有cur 和 end
print(file:read("n"))

-- 读取整个文件
file:seek("set");
print(file:read("a"))

-- 读取下一行
file:seek("set");
print(file:read("l"))


-- 返回一个指定字符个数的字符串
file:seek("set");
print(file:read(10))

-- file:seek("set");
-- file:read("L")






