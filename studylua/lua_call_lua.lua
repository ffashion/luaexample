#! /usr/bin/lua

-- gsub 去掉返回来最后的回车字符以及使用.. 拼接字符串
package.path = io.popen("pwd","r"):read("a"):gsub("[ \t\n\r]+$", "").."/?.lua"

-- 第一个参数是模块的返回值
-- 第二个参数为加载路径
--"mymodule 为文件名 他会直接调用这个文件里面的所有代码"
local mymodule,path = require("mymodule")

print(mymodule,path);
print(mymodule.add(1,4));
print(test.add(1,2));


