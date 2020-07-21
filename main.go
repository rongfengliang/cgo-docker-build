package main

import "fmt"

/*
int add(int a,int b) {return a + b;}
*/
import "C"

func main() {
	for {
		fmt.Println(C.add(1, 3))
	}
}
