-- this is a single line comment

--[[
this is a multi line comment
]]

-- this is a variable (global)
myVariable = "hello"

-- this is a function

function myFunction()
    -- print is used to print to the console
    print("hello")
end

-- and this a call to the function
myFunction()

-- variables and functions can be local (file/scope specific)

local myLocalVariable = "hello"

local function myLocalFunction()
    print("hello")
end

-- functions should have local variables in them

function myFunctionWithLocalVariable()
    local myLocalVariable = "hello"
    print(myLocalVariable)
end

-- To concanete strings use the .. operator

print("hello" .. " " .. "world")

-- We can also concatenate variables

print(myVariable .. " " .. myLocalVariable)

-- lua also has basic control structures like if, else, while, for, do, and repeat

--[[
    These are the boolean operators used in lua
    and - and
    or - or
    not - not
    == - equal to
    ~= - not equal to
    > - greater than
    < - less than
    >= - greater than or equal to
    <= - less than or equal to
]]

-- this is a if statement
if myVariable == "hello" then
    print("hello")
else
    print("not hello")
end

-- this is a short if (or ternary)
print(myVariable == "hello" and "hello" or "not hello")

-- this is a for loop, you essentially give it a range
for i = 1, 100 do
    print(i)
end

-- this is a while loop
while myVariable ~= "hello" do
    print("hello")
    myVariable = "not hello"
end

-- this is a repeat loop, this is flipped while loop (or do-while)
repeat
    print("hello")
until myVariable == "hello"


-- functions can have parameters

function myFunctionWithParameters(param1, param2)
    print(param1, param2)
end

-- and functions can return one..

function returnOneVaiable()
    return 1
end

-- and multiple values

function returnMultipleVariables()
    return 1, 2, 3
end

-- multiple values can be saved in a table

emptyTable = {}
tableWithValues = {1, 2, 3}
tableWithString = {"hello", "world"}
tableWithTable = {{"hello", "world"}, {"goodbye", "world"}}
tableFromFunction = returnMultipleVariables()

-- You use array syntax to access table values

print(tableWithValues[1])
print(tableWithString[2])

-- tables can be key:value pairs

tableWithValues = {
    key1 = 1,
    key2 = 2,
    key3 = 3
}

-- you can use the pairs function to iterate through a table, essentially for-each loop

for key, value in pairs(tableWithValues) do
    print(key, value)
end

-- you access key-value-table values using the dot operator as well

print(tableWithValues.key1)

-- or use the array syntax (normal json paths)

print(tableWithValues["key1"])

-- thats how you make a switch statement in lua (lookupTables)

lookupTable = {
    ["key1"] = function ()
        print("key1")
    end,
    ["key2"] = function ()
        print("key2")
    end,
    ["key3"] = function ()
        print("key3")
    end
}

-- Lua has a semi way of implementing classes

Class = {}

-- This is a Class with initial Values

ClassWithValue = {Value1 = 1}

-- Classes can have constructors

function Class:new(o)
    local o = o or {}
    setmetatable(o, self)
    self.__index = self
    return o
end

-- notice the Self parameter? That basically means 'this' in conventional oop languages

function Class:Constructor(value)
    self.Value1 = value
end

-- everytime we use 'self' we need the ':'
-- but if not the '.' is used

function Class.print(parameter)
    print(parameter)
end

-- To make an object of the Class we call the constructor

myObject = Class:new()

-- We can also inherite in lua

Class2 = Class:new()
function Class2:newFunction()
    print("hello")
end

-- For a better file structure we can use the 'require' function
-- This is also used to use imported libraries

-- Top of file
require "test"

-- To make own modules (files) we just return the map/class at the end of the file

-- (look at end)

-- Try it yourself, this file returns Class!
-- In your file do this:
    local TestClass = require "Class"

-- END OF FILE
return Class