#! /usr/bin/lua
-- lua 函数的使用

--  lua函数定义
local function my_fun()
    print("hell world")
end


-- lua 变参1
local function my_fun1(...)
    local args = {...}; 
    for index, value in ipairs(args) do
        local o =  string.format("v[%d] = %s",index,value)
        print(o);
    end
end

my_fun1(1,2,3);



-- 变参 2
local function my_fun2(...)
    local s = 0;
    for index, value in ipairs({...}) do -- ({...}) 这里可以省略写一个小括号 给ipairs传递的是一个table
        local o =  string.format("v[%d] = %s",index,value)
        print(o);
    end
end

my_fun2(1,2,4);


-- 变参3 变参传递
local function var_para(...)
    local args = {...};-- 将变长数组转换为table 如果外面是传进来的table 那么就可能会二次table了
    local arg = ...; --当然也可以这么定义，但是ipairs只接收table作为参数
    for index, value in ipairs(args) do
        local o =  string.format("v[%d] = %s",index,value);
        print(o);
    end


end

local function my_fun3(...)
    var_para({...},2);-- 传递进去一个table和一个2
    var_para({...});-- 传递一个table
    var_para(...); -- 传递一个变长参数进去
end

my_fun3(1,2,5);


-- lua函数操作 多返回值
local function add(a,b)
    return a+b;
end

local function test(a,b)
    return add,a,b;
end

print(test(2,3))


