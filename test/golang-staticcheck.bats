#!/usr/bin/env bats

@test "Invoke golang-staticcheck with a working file" {
  run pre-commit try-repo . golang-staticcheck --files test/fixtures/golang-staticcheck-fine.go
  [ "$status" -eq 0 ]
}

@test "Invoke golang-staticcheck with a broken file" {
  run pre-commit try-repo . golang-staticcheck --files test/fixtures/golang-staticcheck-broken.go
  [ "$status" -eq 1 ]
  [[ "${output}" == *"should merge variable declaration with assignment on next line (S1021)"* ]]
}
