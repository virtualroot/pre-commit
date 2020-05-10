#!/usr/bin/env bats

@test "Invoke golang-golint with a working file" {
  run pre-commit try-repo . golang-golint --files test/fixtures/golang-golint-fine.go
  [ "$status" -eq 0 ]
}

@test "Invoke golang-golint with a broken file" {
  run pre-commit try-repo . golang-golint --files test/fixtures/golang-golint-broken.go
  [ "$status" -eq 1 ]
  [[ "${output}" == *"var rpcTimeoutMsec is of type *time.Duration"* ]]
}
