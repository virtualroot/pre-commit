package main

import "fmt"

func main() {
  // https://staticcheck.io/docs/checks#S1021
  var x uint
  x = 1
  fmt.Println(x)
}
