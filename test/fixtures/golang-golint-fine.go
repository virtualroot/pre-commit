// https://github.com/golang/lint/blob/master/testdata/time.go
// Test of time suffixes.

// Package foo ...
package foo

import (
	"flag"
	"time"
)

var rpcTimeout = flag.Duration("rpc_timeout", 100*time.Millisecond, "some flag") // MATCH /Msec.*\*time.Duration/

var timeout = 5 * time.Second // MATCH /Secs.*time.Duration/
