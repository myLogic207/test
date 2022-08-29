local Calculator = require "calculator"

local Calc = Calculator:new()

local function main()
    print "--- Welcome to the calculator ---\n"
    print "Enter your first number: "
    local num1 = io.read("*n", "*l")
    print "Enter your second number: "
    local num2 = io.read("*n", "*l")
    print "Enter your operation: "
    local operation = io.read("*l")
    print("Your answer is: "..Calc:lookupOperation(operation, num1, num2))
    print("\n--- Thank you for using the calculator ---")
end

main()