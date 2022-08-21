local Calculator = {}

function Calculator:new (o)
    local o = o or {}
    setmetatable(o, self)
    self.__index = self
    return o
end

function Calculator:add (num1, num2)
    return num1 + num2
end
    
function Calculator:sub (num1, num2)
    return num1 - num2
end

function Calculator:mul (num1, num2)
    return num1 * num2
end

function Calculator:div (num1, num2)
    return num1 / num2
end

-- no you can apperently not use the 'or' keyword
function Calculator:lookupOperation(operation, num1, num2)
    local t = {
        ["add"] = function (n1, n2) return self:add(n1, n2) end,
        ["+"] = function (n1, n2) return self:add(n1, n2) end,
        ["plus"] = function (n1, n2) return self:add(n1, n2) end,
        ["sub"] = function (n1, n2) return self:sub(n1, n2) end,
        ["-"] = function (n1, n2) return self:sub(n1, n2) end,
        ["minus"] = function (n1, n2) return self:sub(n1, n2) end,
        ["mul"] = function (n1, n2) return self:mul(n1, n2) end,
        ["*"] = function (n1, n2) return self:mul(n1, n2) end,
        ["div"] = function (n1, n2) return self:div(n1, n2) end,
        ["/"] = function (n1, n2) return self:div(n1, n2) end
    }
    return (t[operation] and {t[operation](num1, num2)} or {"Invalid operation"})[1]
    -- if t[operation] then
    --     return t[operation](num1, num2)
    -- else
    --     return "Invalid operation"
    -- end
end

return Calculator
