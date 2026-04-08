package main

import (
	"fmt"
	"regexp"
	"time"
)

func main() {
	re := regexp.MustCompile(`(a+)*b$`)
	start := time.Now()
	result := re.MatchString("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaba")
	elapsed := time.Since(start)
	fmt.Printf("result: %v\n", result)
	fmt.Printf("elapsed: %v\n", elapsed)
}
