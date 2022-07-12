---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by 14563.
--- DateTime: 2022/5/6 20:06
--- 私有性测试
---

require("structure")
require("test_object_oriented.test_Account")


------------------------------- 私有性类定义 -------------------------------

-- 创建对象后，无法再直接访问balance
function new_pAccount(balance)
    -- 保存类成员
    local self = {balance = balance}

    local cost = function(v)
        self.balance = self.balance - v
    end
    local save = function(v)
        self.balance = self.balance + v
    end
    local printBalance = function() print(self.balance)  end
    local getBalance = function() return self.balance  end

    return {
        cost = cost,
        save = save,
        printBalance = printBalance,
        getBalance = getBalance
    }
end

------------------------------- 私有性类定义 -------------------------------


------------------------------- 对比 -------------------------------
a = Account:new({balance = 100})
b = new_pAccount(100)
print("无私有性的账户余额：" .. a.balance)
--print("有私有性的账户余额" .. b.balance)
print("有私有性的账户余额：" .. b.getBalance())






