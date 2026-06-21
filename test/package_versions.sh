#!/usr/bin/env bats

if [[ -z "${TEST_CONTAINER}" ]]; then
  echo "ERROR: TEST_CONTAINER environment variable is not set"
  exit 1
fi

bash -c "docker exec ${TEST_CONTAINER} terraform version | head -n 1"
bash -c "docker exec ${TEST_CONTAINER} tofu version | head -n 1"
bash -c "docker exec ${TEST_CONTAINER} gcloud --version"
bash -c "docker exec ${TEST_CONTAINER} kubectl version | head -n 1"
RESULT=$(bash -c "docker exec ${TEST_CONTAINER} helm version --short")
echo "helm ${RESULT}"
bash -c "docker exec ${TEST_CONTAINER} invoke --version"
bash -c "docker exec ${TEST_CONTAINER} circlepipe version"
RESULT=$(bash -c "docker exec ${TEST_CONTAINER} cosign version | grep GitVersion")
echo "cosign ${RESULT}"
RESULT=$(bash -c "docker exec ${TEST_CONTAINER} checkov --version")
echo "checkov ${RESULT}"
bash -c "docker exec ${TEST_CONTAINER} tflint --version | head -n 1"
bash -c "docker exec ${TEST_CONTAINER} bats --version"
RESULT=$(bash -c "docker exec ${TEST_CONTAINER} snyk version")
echo "snyk ${RESULT}"
RESULT=$(bash -c "docker exec ${TEST_CONTAINER} trivy --version | grep Version")
echo "trivy ${RESULT}"
bash -c "docker exec ${TEST_CONTAINER} python -V"
