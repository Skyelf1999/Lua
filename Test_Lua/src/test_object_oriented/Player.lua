---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Administrator.
--- DateTime: 2022/7/18 15:21
---


-- 父类
local Person = require("test_object_oriented.Person")


-- 继承
local Player = Person:new()
Player.game = "玩家身份"    -- 新属性
Player.__index = Player


---- 构造方法
function Player:new(info)
    local object = {}
    self:init(info,object)
    setmetatable(object,self)
    return object
end


-- 新方法
function Player:playerIntroduce()
    local sex
    local game
    if self.ismale then
        sex = "男"
    else
        sex = "女"
    end
    if type(self.game)=="table" then
        print("有多种游戏")
        game = table.concat(self.game,"、")
    else
        game = self.game
    end
    local info = {
        "我是"..self.name,
        "性别为"..sex,
        "今年"..self.age.."岁",
        "喜欢的游戏是"..game
    }
    print(table.concat(info,"，"))
end

return Player