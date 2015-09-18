package main

import "C"

type Person struct {
	Name     string
	LastName string
	Age      int
}

//export GoAdd
func GoAdd(a, b int) int {
	return a + b
}

//export CreatePerson
func CreatePerson(Name *C.char, LastName *C.char, Age int) string {
	name := C.GoString(Name)
	ln := C.GoString(LastName)
	c := &Person{Name: name, LastName: ln, Age: Age}
	println(c)
	return c.Name + " " + c.LastName
}

func main() {}
