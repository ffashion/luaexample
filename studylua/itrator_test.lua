#! /usr/bin/lua


local data1 = {109,9,10,200,7};
-- 无状态迭代器
local function iterator(a, i)
    i=i+1
    local v = a[i]
    if v then
        return i, v
    end
end

local function my_iparis(b)
    return iterator,b,0;
end

--  ipairs返回的第一个是迭代对象方法 然后是index 和 value
--  将返回的index 和 value 作为参数 给迭代对象方法调用
--  迭代方法的返回值 赋值给变量列表 (这里是i 和 v) 继续执行迭代iter迭代函数

for i, v in my_iparis(data1) do
    print(i,v);
end

-- 完全等价于上面的
for i, v in iterator,data1,0 do
    print(i,v)
end


-- 有状态迭代器
-- 迭代方法内部需要保存数据
local data2 = {"hello","world"};
local function element_iterator(array)
    local index = 0;
    local nelm = #array; -- #表示取得数组的长度
    return function ()
        index = index + 1;
        if index <= nelm then
            return array[index];
        end
    end
end

for value in element_iterator(data2) do
    print(value)
end
