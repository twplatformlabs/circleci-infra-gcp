<div align="center">
	<p>
		<img alt="Thoughtworks Logo" src="https://raw.githubusercontent.com/twplatformlabs/static/master/psk_banner.png" width=800 />
	</p>
  <h1>twdps/circleci-infra-gcp</h1>
  <h3>PSK CircleCI Convenience Images</h3>
  <a href="https://app.circleci.com/pipelines/github/twplatformlabs/circleci-infra-gcp"><img src="https://circleci.com/gh/twplatformlabs/circleci-infra-gcp.svg?style=shield"></a> <a href="https://opensource.org/licenses/MIT"><img src="https://img.shields.io/github/license/twplatformlabs/circleci-infra-gcp"></a>
</div>
<br />

Tools and packages used in infrastructure pipelines managing Google Cloud infrastructure.  

Primary packages include:  
- gcloud, terraform, tflint, snyk, trivy, terrascan, checkov, bats  
- kubectl, helm, cosign, karmadactl
- nodejs, python   

**Note** Terraform currently pinned to 1.14.1  

_Review the build and CVE scan logs in the release artifacts for specific packages versions and known vulnerabilities (if any)._  

**signature**. Images are signed using `cosign`. Verify images using the twplatformlabs [public key](https://raw.githubusercontent.com/twplatformlabs/static/master/cosign.pub).  
```bash
cosign verify --key cosign.pub twdps/circleci-infra-gcp:alpine-2025.04
```  
**software bill of materials**. For each published image, a _Software Bill of Materials_ is generated using [syft](https://github.com/anchore/syft) and added as an attestation.  

validate attestation:  
```bash
cosign verify-attestation --type https://spdx.dev/Document --key cosign.pub twdps/circleci-infra-gcp:alpine-2025.04
```
download manifest and extract bill of materials (sbom.spdx.json):  
```
cosign download attestation twdps/circleci-infra-gcp:alpine-2025.04 > attestation.json  
jq -r '.payload' attestation.json | base64 -d > envelope.json
jq '.predicate' envelope.json > sbom.spdx.json
```
_Note. Dockerhub Scout does not appear to support non-docker attestations_  

### Tagging Scheme

This image has the following tagging scheme:

```
twdps/circleci-infra-gcp:-<YYYY.MM>
twdps/circleci-infra-gcp:-stable
twdps/circleci-infra-gcp:-edge
```

`<YYYY.MM>` - Release version of the image, referred to by the 4 digit year, dot, and a 2 digit month. For example `2025.04` would be the monthly tag from April 2025. This image is generated monthly, based on the then current release of the base image and related packages and provides a predictable fixed point for use in an executor Dockerfile. Review the build log in the pipeline artifacts for the specific image and package versions. Occasionally there will be interim patches released and you may see `2025.04.1` or addtional numbered versions.  

`stable` - generic tag that always points to the latest, monthly release image. Typically used by other recurring builds and not recommended for pipeline usage. Pin pipelines to specific month-tagged builds.  

`edge` - is the latest development of the Base image. Built from the `HEAD` of the `main` branch. Intended to be used as a testing version of the image with the most recent changes.  