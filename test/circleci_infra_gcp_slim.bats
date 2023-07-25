#!/usr/bin/env bats

@test "terraform version" {
  run bash -c "docker exec circleci-infra-gcp-slim-edge terraform version"
  [[ "${output}" =~ "1.5" ]]
}

@test "tflint version" {
  run bash -c "docker exec circleci-infra-gcp-slim-edge tflint --version"
  [[ "${output}" =~ "0.47" ]]
}

@test "wget version" {
  run bash -c "docker exec circleci-infra-gcp-slim-edge wget --version"
  [[ "${output}" =~ "1.21" ]]
}

@test "docker health" {
  run bash -c "docker exec circleci-infra-gcp-slim-edge docker version"
  [[ "${output}" =~ "23" ]]
}

@test "jq version" {
  run bash -c "docker exec circleci-infra-gcp-slim-edge jq --version"
  [[ "${output}" =~ "1.6" ]]
}

@test "python3 version" {
  run bash -c "docker exec circleci-infra-gcp-slim-edge python -V"
  [[ "${output}" =~ "3.11" ]]
}

@test "gcloud version" {
  run bash -c "docker exec circleci-infra-gcp-slim-edge gcloud --version"
  [[ "${output}" =~ "440.0.0" ]]
}

@test "bats version" {
  run bash -c "docker exec circleci-infra-gcp-slim-edge bats -v"
  [[ "${output}" =~ "1.9" ]]
}

@test "ruby version" {
  run bash -c "docker exec circleci-infra-gcp-slim-edge ruby -v"
  [[ "${output}" =~ "3.1" ]]
}

@test "gcppec version" {
  run bash -c "docker exec circleci-infra-gcp-slim-edge gcppec -v"
  [[ "${output}" =~ "1.29" ]]
}

@test "inspec version" {
  run bash -c "docker exec circleci-infra-gcp-slim-edge inspec -v"
  [[ "${output}" =~ "5.21" ]]
}

@test "tfsec version" {
  run bash -c "docker exec circleci-infra-gcp-slim-edge tfsec --help"
  [[ "${output}" =~ "Usage:" ]]
}

@test "checkov version" {
  run bash -c "docker exec circleci-infra-gcp-slim-edge checkov -v"
  [[ "${output}" =~ "2.3" ]]
}

@test "driftctl version" {
  run bash -c "docker exec circleci-infra-gcp-slim-edge driftctl version"
  [[ "${output}" =~ "0.39" ]]
}

@test "gren version" {
  run bash -c "docker exec circleci-infra-gcp-slim-edge gren --version"
  [[ "${output}" =~ "0.17" ]]
}

@test "snyk version" {
  run bash -c "docker exec circleci-infra-gcp-slim-edge snyk version"
  [[ "${output}" =~ "1.1184" ]]
}
