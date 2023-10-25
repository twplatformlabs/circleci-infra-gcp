#!/usr/bin/env bats

@test "terraform installed" {
  run bash -c "docker exec circleci-infra-gcp-alpine-edge terraform --help"
  [[ "${output}" =~ "Usage:" ]]
}

@test "tflint installed" {
  run bash -c "docker exec circleci-infra-gcp-alpine-edge tflint --help"
  [[ "${output}" =~ "Usage:" ]]
}

@test "python3 installed" {
  run bash -c "docker exec circleci-infra-gcp-alpine-edge python --help"
  [[ "${output}" =~ "usage:" ]]
}

@test "gcloud installed" {
  run bash -c "docker exec circleci-infra-gcp-alpine-edge gcloud --version"
  [[ "${output}" =~ "Google Cloud SDK" ]]
}

@test "bats installed" {
  run bash -c "docker exec circleci-infra-gcp-alpine-edge bats --help"
  [[ "${output}" =~ "Usage:" ]]
}

@test "ruby installed" {
  run bash -c "docker exec circleci-infra-gcp-alpine-edge ruby --help"
  [[ "${output}" =~ "Usage:" ]]
}

@test "inspec installed" {
  run bash -c "docker exec circleci-infra-gcp-alpine-edge inspec"
  [[ "${output}" =~ "Commands:" ]]
}

@test "tfsec installed" {
  run bash -c "docker exec circleci-infra-gcp-alpine-edge tfsec --help"
  [[ "${output}" =~ "Usage:" ]]
}

@test "checkov installed" {
  run bash -c "docker exec circleci-infra-gcp-alpine-edge checkov --h"
  [[ "${output}" =~ "usage:" ]]
}

@test "driftctl installed" {
  run bash -c "docker exec circleci-infra-gcp-alpine-edge driftctl --help"
  [[ "${output}" =~ "Usage:" ]]
}

@test "gren installed" {
  run bash -c "docker exec circleci-infra-gcp-alpine-edge gren --help"
  [[ "${output}" =~ "Usage:" ]]
}

@test "snyk installed" {
  run bash -c "docker exec circleci-infra-gcp-alpine-edge snyk --help"
  [[ "${output}" =~ "CLI help" ]]
}

@test "circlepipe installed" {
  run bash -c "docker exec circleci-infra-gcp-alpine-edge circlepipe --help"
  [[ "${output}" =~ "A fast and flexible" ]]
}

@test "shasum installed" {
  run bash -c "docker exec circleci-infra-gcp-alpine-edge shasum --help"
  [[ "${output}" =~ "Usage:" ]]
}

@test "cosign installed" {
  run bash -c "docker exec circleci-infra-gcp-alpine-edge cosign --help"
  [[ "${output}" =~ "A tool for Container Signing" ]]
}
