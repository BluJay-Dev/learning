package main

import (
	"fmt"
	"os"
	"strings"
)

func main() {
	msg := os.Args[1]
	l := len(msg)
	rep := strings.Repeat("!", l)
	s := rep + msg + rep
	s = strings.ToUpper(s)
	fmt.Println(s)
}
