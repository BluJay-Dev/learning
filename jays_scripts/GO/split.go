package main

import (
	"fmt"
	"path"
)

func main() {

	_, file := path.Split("/users/jayelms/desktop/definitions.txt")

	fmt.Println("file:", file)
}
