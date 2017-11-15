-- region *.lua
-- Date
-- 此文件由[BabeLua]插件自动生成



-- endregion

print("Hello World!")

--函数
function Sum(a, b)
    return a + b
end

print(Sum(1, 2))


--类
Role = { name="123", age=0, sex="女" }
Role.__index = Role
function Role:new(name, age, sex)
    local self = {}
    setmetatable(self, Role)
    self.name = name
    self.age = age
    self.sex = sex
    return self
end

function Role:Print1()
    print("Name:"..self.name ,"Age:".. self.age ,"Sex:" .. self.sex)
end

role1 = Role:new("XYS",25,"Man")
role1:Print1()
print("Name:"..role1.name ,"Age:".. role1.age ,"Sex:" .. role1.sex)

--A = {x=0,y=0}
----这句是重定义元表的索引，必须要有，
--A.__index = A

----模拟构造体，一般名称为new()
--function A:new(x,y)
--        local self = {}   
--        setmetatable(self, A)   --必须要有
--        self.x = x   
--        self.y = y
--        return self  
--end

--function A:test()
--    print(self.x,self.y)
--end

--objA = A:new(1,2)
--objA:test()
--print(objA.x,objA.y)

os.execute("Pause");


