package main

import (
	"fmt"
	"unicode/utf8"
)

func main() {
	name := "˳R곲8sz٤ə證햪ۖI󆚑닎򦰌Gࠅ񮹉𘑛Äӥ͝𳄓ᖘ웥?UV˯䘨󱗗"
	fmt.Println(len(name))
	fmt.Println(utf8.RuneCountInString(name))

}
