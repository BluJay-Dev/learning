// Copyright © 2018 Inanc Gumus
// Learn Go Programming Course
// License: https://creativecommons.org/licenses/by-nc-sa/4.0/
//
// For more tutorials  : https://learngoprogramming.com
// In-person training  : https://www.linkedin.com/in/inancgumus/
// Follow me on twitter: https://twitter.com/inancgumus

package main

import (
	"fmt"
	"os"
	"strconv"
)
var max int
var math string
func main() {
	max, _ = strconv.Atoi(os.Args[1])
	math = os.Args[2]

	fmt.Printf("You have chosen %v as your mathmatical operator\n", math)

	fmt.Printf("%5s", "x")
	for i := 1; i <= max; i++ {
		fmt.Printf("%5d", i)
	}
	fmt.Println()

	for i := 1; i <= max; i++ {
		fmt.Printf("%5d", i)

		switch math {
		case "plus":
			for j := 1; j <= max; j++ {
				fmt.Printf("%5d", i + j)
			}
			fmt.Println()
		case "minus":
			for j := 1; j <= max; j++ {
				fmt.Printf("%5d", i - j)
			}
			fmt.Println()
		case "divide":
			for j := 1; j <= max; j++ {
				fmt.Printf("%5d", i / j)
			}
			fmt.Println()
		case "multiply":
			for j := 1; j <= max; j++ {
				fmt.Printf("%5d", i * j)
			}
			fmt.Println()

		}
		////for j := 0; j <= max; j++ {
		//	fmt.Printf("%5d", i * j)
		//}
		//fmt.Println()
	}
}