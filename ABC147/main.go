package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	l := nextLine()
	strs := strings.Split(l, " ")
	res :=int64(0)
	for _, v := range strs {
		x, _ := strconv.ParseInt(v, 10, 0)
		res = res + x
	}
	if res >= 22 {
		fmt.Println("bust")
	} else {
		fmt.Println("win")
	}
}
