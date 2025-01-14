#!/bin/bash
curl --location --output ./release-cli "https://gitlab.com/api/v4/projects/gitlab-org%2Frelease-cli/packages/generic/release-cli/latest/release-cli-linux-amd64"
chmod +x release-cli
./release-cli create --name "$CI_COMMIT_TAG" --description "Release $CI_COMMIT_TAG" \
      --tag-name $CI_COMMIT_TAG --ref $CI_COMMIT_SHA \
      --assets-link \
	  "{\"name\":\"dxvk-gplasync-${CI_COMMIT_TAG}.zip\",\"url\":\"https://gitlab.com/Ph42oN/dxvk-gplasync/-/jobs/${CI_JOB_ID}/artifacts/download?file_type=archive\",\"link_type\":\"package\"}"
#      --assets-link "{\"name\":\"dxvk-gplasync-${CI_COMMIT_TAG}.tar.gz\",\"url\":\"https://gitlab-ci-token:$CI_DL_TOKEN@${PACKAGE_REGISTRY_URL}/dxvk-gplasync-${CI_COMMIT_TAG}.tar.gz\",\"link_type\":\"package\"}" \