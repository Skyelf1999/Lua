---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by 14563.
--- DateTime: 2022/4/29 11:29
--- table访问的元方法
---

require("structure")

Window = {}

-- 窗体原型：存储默认属性、默认元表
Window.prototype = {x=0, y=0, width=100, height=100}
Window.mt = {}

--构造函数（传入一个table）
function Window.new(o)
    setmetatable(o,Window.mt)
    return o
end

------------------------------- __index -------------------------------
structure.Func_type("__index",true)

-- __index：当目标字段不在table中时的处理办法
Window.mt.__index = function(table, key)
    return Window.prototype[key]
end

-- 创建新的窗口
w = Window.new{x=10,y=20}
print("查询新建窗口中没有的字段height：" .. w.width)

structure.Func_type("__index",false)
------------------------------- __index -------------------------------


------------------------------- 默认值 -------------------------------
structure.Func_type("默认值",true)

-- 调用此方法将默认值与table绑定，使__index字段返回默认值
function setDefault(t,d)
    local mt = {__index = function() return d  end}
    setmetatable(t,mt)
end

new_table = {x=10,y=20}
setDefault(new_table,999)
print(new_table.z)  -->999

structure.Func_type("默认值",true)
------------------------------- 默认值 -------------------------------


------------------------------- 只读table -------------------------------
structure.Func_type("只读table",true)

function readOnly(t)
    local proxy = {}
    local mt = {
        __index = t,
        __newindex = function (t,k,v)
            error("不能更新只读table")
        end
    }
    setmetatable(proxy,mt)
    return proxy
end

names = readOnly({"dsh", "zdd", "zrq", "wjl"})
print(names[2])     --> zdd
names[1] = "qmn"    --> 报错

structure.Func_type("只读table",false)
------------------------------- 只读table -------------------------------


