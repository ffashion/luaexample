#! /usr/bin/lua

-- 正则
local str = "192.168.31.1 netmast ff:ff:ff:ff"

print(str:find("192",0,false)); --返回位置

print(str:match('%d+.%d+.%d+.%d+',0,false)); --返回匹配的字符串

-- str:gmatch() #返回一个迭代器函数 每次调用会找到一个符合的子串

-- str:gsub() #替换

--链接2个字符串
local str = "hello".."world" ;
print(str)