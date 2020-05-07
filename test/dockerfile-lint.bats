#!/usr/bin/env bats

@test "Invoke dockerfile-lint with a working file" {
  run pre-commit try-repo . dockerfile-lint --files test/fixtures/Dockerfile-fine
  [ "$status" -eq 0 ]
}

@test "Invoke dockerfile-lint with a broken file" {
  run pre-commit try-repo . dockerfile-lint --files test/fixtures/Dockerfile-broken
  [ "$status" -eq 1 ]
  [[ "${output}" == *"DL3006 Always tag the version of an image explicitly"* ]]
}
