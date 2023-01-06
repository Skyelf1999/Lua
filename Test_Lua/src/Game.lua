---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Administrator.
--- DateTime: 2022/4/21 16:03
---

module("Game",package.seeall)

local _game = {}
_game.name = "游戏"
_game.type = "类型"
_game.metaData = 1
_game.__index = _game

function create(...)
    local info = {...}
    local new = {}
    new.name = info[1]
    new.type = info[2]
    setmetatable(new,_game)
    return new
end

function _game:printInfo()
    for k,v in pairs(self) do
        if type(v)~="function" then
            print(k,v)
        end
    end
    print()
end