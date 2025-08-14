# #!/usr/bin/env bats

@test "gcloud available" {
  run bash -c "docker exec container-test gcloud --version"
  [[ "${output}" =~ "Google Cloud SDK" ]]
  [[ "${output}" =~ "gke-gcloud-auth-plugin" ]]
}

@test "terraform available" {
  run bash -c "docker exec container-test terraform --help"
  [[ "${output}" =~ "Usage: terraform" ]]
}

@test "tflint available" {
  run bash -c "docker exec container-test tflint --help"
  [[ "${output}" =~ "tflint --chdir=DI" ]]
}

@test "python3 available" {
  run bash -c "docker exec container-test python --help"
  [[ "${output}" =~ "Options" ]]
}

@test "bats available" {
  run bash -c "docker exec container-test bats --help"
  [[ "${output}" =~ "Usage: bats" ]]
}

@test "trivy available" {
  run bash -c "docker exec container-test trivy --help"
  [[ "${output}" =~ "trivy [command]" ]]
}

@test "checkov available" {
  run bash -c "docker exec container-test checkov --help"
  [[ "${output}" =~ "usage: checkov" ]]
}

@test "snyk available" {
  run bash -c "docker exec container-test snyk --help"
  [[ "${output}" =~ "Snyk CLI scans" ]]
}

@test "circlepipe available" {
  run bash -c "docker exec container-test circlepipe --help"
  [[ "${output}" =~ "circlepipe [command]" ]]
}

@test "cosign available" {
  run bash -c "docker exec container-test cosign --help"
  [[ "${output}" =~ "cosign [command]" ]]
}

@test "kubectl available" {
  run bash -c "docker exec container-test kubectl --help"
  [[ "${output}" =~ "kubectl controls" ]]
}

@test "helm available" {
  run bash -c "docker exec container-test helm --help"
  [[ "${output}" =~ "helm [command]" ]]
}

@test "dig available" {
  run bash -c "docker exec container-test dig -h"
  [[ "${output}" =~ "dig [@global-server]" ]]
}
