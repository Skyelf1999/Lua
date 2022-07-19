---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Administrator.
--- DateTime: 2022/7/19 15:23
---

local Person = require("test_object_oriented.Person")

-- 继承
local Student = Person:new()
Student.school = "毕业院校"
Student.__index = Student


-- 重写构造函数
function Student:new(info)
    local object = {}
    self:init(info,object)
    setmetatable(object,self)
    return object
end


function Student:studentIntroduce()
    local sex
    if self.ismale then
        sex = "男"
    else
        sex = "女"
    end
    local info = {
        "我是"..self.name,
        "性别为"..sex,
        "今年"..self.age.."岁",
        "我毕业于"..self.school
    }
    print(table.concat(info,"，"))
end