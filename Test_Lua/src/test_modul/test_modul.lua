---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by 14563.
--- DateTime: 2022/4/30 10:40
---

require("structure")
require("test_modul.complex")

------------------------------- 模块测试 -------------------------------
structure.Func_type("模块测试",true)

c_1 = complex.new(1,1)
c_2 = complex.new(1,-1)
--print(complex.i.r,complex.i.i)
print(c_1)

structure.Func_type("模块测试",true)
------------------------------- 模块测试 -------------------------------


------------------------------- 使用环境的模块测试 -------------------------------
structure.Func_type("使用环境的模块测试",true)

require("test_modul.complex_2")
c_3 = complex_2.new(1,3)
print(c_3)

structure.Func_type("使用环境的模块测试",false)
------------------------------- 使用环境的模块测试 -------------------------------