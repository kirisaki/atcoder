package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	n0, _ := strconv.ParseInt(nextLine(), 10, 0)
	n := int(n0)
	xss := [][][]int{}
	for i := 0; i < n; i++ {
		xs := [][]int{}
		a0, _ := strconv.ParseInt(nextLine(), 10, 0)
		a := int(a0)
		for j := 0; j < a; j++ {
			xy := strings.Split(nextLine(), " ")
			x, _ := strconv.ParseInt(xy[0], 10, 0)
			y, _ := strconv.ParseInt(xy[1], 10, 0)
			xs = append(xs,[]int{int(x), int(y)})
		}
		xss = append(xss, xs)
	}

	ps := [][]int{}
	for i := 0; i < pow(2, n); i++{
		p := []int{}
		q := i
		for j := 0; j < n; j++ {
			p = append(p, q % 2)
			q = q / 2
		}
		ps = append(ps, p)
	}

	res := 0
	for i := 0; i < len(ps); i++ {
		for j := 0; j < n; j++ {
			ps[i][j]
		}

	}
	fmt.Println(ps)
}

func pow(x int, y int) int{
	res := 1
	for i := 0; i < y; i++ {
		res = res * x
	}
	return res
}
