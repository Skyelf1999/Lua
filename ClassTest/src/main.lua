---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Administrator.
--- DateTime: 2022/6/23 10:29
---

require("class")


--定义敌人类型
EnemyTypes = {
    Enemy_Stone =  0,--陨石
    Enemy_1 =  1,--敌机1
    Enemy_2 =  2,--敌机2
    Enemy_Planet =  3 --行星
}


--定义敌人名称 也是敌人精灵帧的名字
EnemyName = {
    Enemy_Stone =  "gameplay.stone1.png",
    Enemy_1 =  "gameplay.enemy-1.png",
    Enemy_2 =  "gameplay.enemy-2.png",
    Enemy_Planet =  "gameplay.enemy.planet.png"
}


--分值
EnemyScores = {
    Enemy_Stone = 5,
    Enemy_1 = 10,
    Enemy_2 = 15,
    Enemy_Planet = 20
}


--敌人初始生命值
Enemy_initialHitPoints = {
    Enemy_Stone = 3,
    Enemy_1 = 5,
    Enemy_2 = 15,
    Enemy_Planet = 20
}





