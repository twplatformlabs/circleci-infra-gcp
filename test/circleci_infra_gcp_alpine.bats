#!/usr/bin/env bats

@test "terraform version" {
  run bash -c "docker exec circleci-infra-gcp-alpine-edge terraform version"
  [[ "${output}" =~ "1.5" ]]
}

@test "tflint version" {
  run bash -c "docker exec circleci-infra-gcp-alpine-edge tflint --version"
  [[ "${output}" =~ "0.47" ]]
}

@test "python3 version" {
  run bash -c "docker exec circleci-infra-gcp-alpine-edge python -V"
  [[ "${output}" =~ "3.11" ]]
}

@test "gcloud version" {
  run bash -c "docker exec circleci-infra-gcp-alpine-edge gcloud --version"
  [[ "${output}" =~ "440.0.0" ]]
}

@test "bats version" {
  run bash -c "docker exec circleci-infra-gcp-alpine-edge bats -v"
  [[ "${output}" =~ "1.9" ]]
}

@test "ruby version" {
  run bash -c "docker exec circleci-infra-gcp-alpine-edge ruby -v"
  [[ "${output}" =~ "3.2" ]]
}

@test "inspec version" {
  run bash -c "docker exec circleci-infra-gcp-alpine-edge inspec -v"
  [[ "${output}" =~ "5.21" ]]
}

@test "tfsec version" {
  run bash -c "docker exec circleci-infra-gcp-alpine-edge tfsec --help"
  [[ "${output}" =~ "Usage:" ]]
}

@test "checkov version" {
  run bash -c "docker exec circleci-infra-gcp-alpine-edge checkov -v"
  [[ "${output}" =~ "2.3" ]]
}

@test "driftctl version" {
  run bash -c "docker exec circleci-infra-gcp-alpine-edge driftctl version"
  [[ "${output}" =~ "0.39" ]]
}

@test "gren version" {
  run bash -c "docker exec circleci-infra-gcp-alpine-edge gren --version"
  [[ "${output}" =~ "0.17" ]]
}

@test "snyk version" {
  run bash -c "docker exec circleci-infra-gcp-alpine-edge snyk version"
  [[ "${output}" =~ "1.1184" ]]
}
