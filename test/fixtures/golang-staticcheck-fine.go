package main

import "fmt"

func main() {
  // https://staticcheck.io/docs/checks#S1021
  var x uint = 1
  fmt.Println(x)
}
