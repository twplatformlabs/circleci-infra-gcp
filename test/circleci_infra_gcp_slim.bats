#!/usr/bin/env bats

@test "terraform version" {
  run bash -c "docker exec circleci-infra-gcp-slim-edge terraform --help"
  [[ "${output}" =~ "Usage:" ]]
}

@test "tflint version" {
  run bash -c "docker exec circleci-infra-gcp-slim-edge tflint --help"
  [[ "${output}" =~ "Usage:" ]]
}

@test "wget version" {
  run bash -c "docker exec circleci-infra-gcp-slim-edge wget --help"
  [[ "${output}" =~ "Usage:" ]]
}

@test "docker health" {
  run bash -c "docker exec circleci-infra-gcp-slim-edge docker --help"
  [[ "${output}" =~ "Usage:" ]]
}

@test "jq version" {
  run bash -c "docker exec circleci-infra-gcp-slim-edge jq --help"
  [[ "${output}" =~ "Usage:" ]]
}

@test "python3 version" {
  run bash -c "docker exec circleci-infra-gcp-slim-edge python --help"
  [[ "${output}" =~ "usage:" ]]
}

@test "gcloud version" {
  run bash -c "docker exec circleci-infra-gcp-slim-edge gcloud --version"
  [[ "${output}" =~ "Google Cloud SDK" ]]
}

@test "bats version" {
  run bash -c "docker exec circleci-infra-gcp-slim-edge bats --help"
  [[ "${output}" =~ "Usage:" ]]
}

@test "ruby version" {
  run bash -c "docker exec circleci-infra-gcp-slim-edge ruby --help"
  [[ "${output}" =~ "Usage:" ]]
}

@test "inspec version" {
  run bash -c "docker exec circleci-infra-gcp-slim-edge inspec"
  [[ "${output}" =~ "Commands:" ]]
}

@test "tfsec version" {
  run bash -c "docker exec circleci-infra-gcp-slim-edge tfsec --help"
  [[ "${output}" =~ "Usage:" ]]
}

@test "checkov version" {
  run bash -c "docker exec circleci-infra-gcp-slim-edge checkov --h"
  [[ "${output}" =~ "usage:" ]]
}

@test "driftctl version" {
  run bash -c "docker exec circleci-infra-gcp-slim-edge driftctl --help"
  [[ "${output}" =~ "Usage:" ]]
}

@test "gren version" {
  run bash -c "docker exec circleci-infra-gcp-slim-edge gren --help"
  [[ "${output}" =~ "Usage:" ]]
}

@test "snyk version" {
  run bash -c "docker exec circleci-infra-gcp-slim-edge snyk --help"
  [[ "${output}" =~ "CLI help" ]]
}

@test "circlepipe version" {
  run bash -c "docker exec circleci-infra-gcp-slim-edge circlepipe --help"
  [[ "${output}" =~ "A fast and flexible" ]]
}

@test "shasum version" {
  run bash -c "docker exec circleci-infra-gcp-slim-edge shasum --help"
  [[ "${output}" =~ "Usage:" ]]
}

@test "cosign version" {
  run bash -c "docker exec circleci-infra-gcp-slim-edge cosign --help"
  [[ "${output}" =~ "A tool for Container Signing" ]]
}
