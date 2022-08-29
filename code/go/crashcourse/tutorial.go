// This is a single line comment

/**
 * This is a multi-line comment
 */

// In go we create, import and export modules. To keep track of our module, we initialize it. To do so, execute this command:
// go mod init mymodule
// This will create a file called mymodule.mod in the current directory.

// In go we group code as a package
// The package should be the name of the directory that contains the code

package crashcourse

// Importing packages is done with the following command:
// import "package_name"
// This will import the fmt package, it is included and does formatting text and printing on the console.
import "fmt"

// To import multiple packages, we can use the following syntax:

// To declare a function in go, we use the following syntax:
// func function_name(parameters) return_type {}
// We will look at the parameters and return type later.
func helloWorld() {
	// This will print "Hello World" to the console
	// See how we access the fmt package with the dot operator?
	fmt.Println("Hello World")
}

// This is the main function, it is the entry point of the program.
func main() {
	// This will call the helloWorld function
	helloWorld()
//}

	// This is how we declare a variable in go.
	// var variable_name variable_type
	// valid types are string, int, float64, bool, []int, map[string]int, etc.
	var helloWorldString string
	var numberTest int
	var multiple, strings string

	// To assign values to variables, we use the following syntax:
	// variable_name = value
	helloWorldString = "Hello World"

	// We can also do this with short hand syntax:
	// See how we don't need to put the data type in front of the variable?
	var test = "Hello World"
	var many, numbers = 1, 2

	// The shortest way is this tho:
	// We can even emit the 'var' keyword if we want.
	short := true

	// To concatenate strings, we use the + operator.
	// We can also use the += operator to concatenate.
	test = test + " World"
	test += " World"

	// To concatenate strings while printing to the console, we can use plus.
	fmt.Println("Test:"+ test)
	// Or format our string with the %s operator.
	fmt.Printf("Test: %s\n", test)
	
	// This is an array in go. It can hold multiple values of the same type.
	// We can declare an array with the following syntax:
	// var array_name [size]type
	var array [5]int
	
	// We can also assign values to the array with the following syntax:
	// array_name[index] = value
	array[0] = 1
	array[1] = 2
	
	// To access an element in the array, we use the following syntax:
	// array_name[index]
	fmt.Println(array[0])

	// We can also use a shorthand syntax to assign values to the array:
	array2 := [5]int{1, 2, 3, 4, 5}
	
	// This is a map. It holds key value pairs.
	// We can declare a map with the following syntax:
	// var map_name map[key_type]value_type
	var mapDict map[string]string

	// To assign values to the map with the following syntax:
	// map_name[key] = value
	mapDict["Japan"] = "Tokyo"

	// To access a value in the map, we use the following syntax:
	// map_name[key]
	fmt.Println(mapDict["Japan"])

	// We can also use a shorthand syntax to assign values to the map:
	mapDict2 := map[string]string{"Japan": "Tokyo", "China": "Beijing", "Canada": "Ottawa"}
	

	// Go linter wants you to always use your variables, so here we go.
	fmt.Println(helloWorldString, numberTest, multiple, strings, test, many, numbers, short, array, array2, mapDict, mapDict2)
}

// Functions can have parameters.
func helloWorldWithParameters(name string) {
	fmt.Println("Hello World", name)
}

// Functions can have multiple parameters.
// The parameters are separated by commas.
func helloWorldWithMultipleParameters(name string, age int) {
	fmt.Println("Hello World", name, age)
}

// Functions can have return values
func helloWorldWithReturnValue() string {
	return "Hello World"
}

// Functions can have multiple return values.
// The return values are separated by commas.
func helloWorldWithReturn() (string, string) {
	return "Hello", "World"
}

// Functions can have multiple return types.
// The return types are separated by commas.
func helloWorldWithMultipleReturn() (string, int) {
	return "Hello", 1
}

// Lets now have a look at our control structures.
func controlStructures(){
	// If statements are the simplest control structure.
	// We don't need to use parentheses.
	if true {
		fmt.Println("True")
	}

	// We can also use all boolean operators.
	if true || false && true {
		fmt.Println("True")
	}

	// If statements can have multiple conditions.
	// We can use the && operator to combine conditions.
	if !false && true {
		fmt.Println("True")
	}

	// We also have for loops in go.
	// This one has three parts:
	for i := 0; i < 10; i++ {
		fmt.Println(i)
	}

	// This is a for-each loop in go.
	// This one has two parts:
	for i := range []int{1, 2, 3} {
		fmt.Println(i)
	}

	// This is a foreach loop for elements...
	strDict := map[string]string{"Japan": "Tokyo", "China": "Beijing", "Canada": "Ottawa"}
	for index, element := range strDict {
		fmt.Println("Index :", index, " Element :", element)
	}
	
	// ...keys...
	for key := range strDict {
		fmt.Println(key)
	}
	
	// ...and values.
	for _, value := range strDict {
		fmt.Println(value)
	}

	// This is an inifinite loop.
	// We can use the break keyword to exit the loop.
	for {
		fmt.Println("Hello World")
		break
	}

	// We can use the continue keyword to skip the rest of the loop.
	for i := 0; i < 10; i++ {
		if i == 5 {
			continue
		}
		fmt.Println(i)
	}
	// We can use the switch statement to evaluate different conditions.
	time := "night"
	switch time {
	case "morning":
		fmt.Println("Good morning")
	case "afternoon":
		fmt.Println("Good afternoon")
	case "evening":
		fmt.Println("Good evening")
	case "night":
		fmt.Println("Good night")
	default:
		fmt.Println("Good day")
	}

}