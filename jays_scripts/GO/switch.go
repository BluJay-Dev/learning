package main

import (
	"fmt"
	"time"
)

func main() {
	hour := time.Now().Hour()
	fmt.Println(hour)

	switch {
	case hour < 12 && hour  > 6:
		fmt.Println("Good morning")
	case hour < 18 && hour  > 12:
		fmt.Println("Good afternoon")
	case hour < 22 && hour  > 18:
		fmt.Println("Good evening")
	case hour < 6:
		fmt.Println("Good night")
	}
}