package main

import (
	"fmt"
	"github.com/TwinProduction/go-color"
	"github.com/inancgumus/screen"
	"math/rand"
	"time"
)

func main() {
	screen.Clear()
	screen.MoveTopLeft()
	rand.Seed(time.Now().UnixNano())
	var isHeistOn  = true
	var eludeGuards  = rand.Intn(100)
	if eludeGuards >= 50 {
		fmt.Println(color.Blue,"Looks like you've managed to make it past the guards. Good job, but remember, this is the first step.")
	} else {
		fmt.Println(color.Red,"Plan a better disguise next time?")
		isHeistOn = false
		return
	}
	var openedVault  = rand.Intn(100)
	if isHeistOn == true && openedVault >= 70 {
		fmt.Println(color.Blue,"Grab and GO!")
	} else if isHeistOn == false && openedVault < 70{
		isHeistOn = false
		fmt.Println(color.Red,"the vault can't be opened")
	}
	var leftSafely = rand.Intn(10)
	if isHeistOn == true {
		switch leftSafely {
		case 0:
			isHeistOn = false
			fmt.Println(color.Red,"we'll get em next time")
		case 1:
			isHeistOn = false
			fmt.Println(color.Red,"You were shot and caught")
		case 2:
			isHeistOn = false
			fmt.Println(color.Red,"You tripped over your shoelace!")
		case 3:
			isHeistOn = false
			fmt.Println(color.Red,"The getaway driver drove off without you")
		case 4:
			isHeistOn = false
			fmt.Println(color.Red,"Your team turned on you and took off")
		default:
			fmt.Println(color.Blue,"Start the getaway car!")
		}
	}
	if isHeistOn == true {
		var amtStolen  = 10000 + rand.Intn(1000000)
		fmt.Printf(color.Green)
		fmt.Printf("Good job $%v was stolen 🎉🎉🎉🎉\n", amtStolen)
	}
}
