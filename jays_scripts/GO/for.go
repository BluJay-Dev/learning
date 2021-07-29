package main

import (
	"fmt"
	"strings"
)

func main() {
	var (
		i int
		v string
	)
	words := strings.Fields(
		"1 2 3 4 5 6 7 8 9")
	for i, v = range words {
		fmt.Printf("#%-2d: %q\n", i+1, v)
	}
	fmt.Printf("last value of i = %d q = %q\n", i, v)
}