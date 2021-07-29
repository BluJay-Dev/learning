package main

import (
	"fmt"
	"github.com/mtslzr/pokeapi-go"
	"io/ioutil"
	"log"
	"net/http"
	"os"
)

func main() {
	response, err := http.Get("https://pokeapi.co/api/v2/pokemon/charmander")
	pokeapi.Pokemon("1")
	if err != nil {
		fmt.Print(err.Error())
		os.Exit(1)
	}

	responseData, err := ioutil.ReadAll(response.Body)
	if err != nil {
		log.Fatal(err)
	}
	fmt.Println(string(responseData))

}