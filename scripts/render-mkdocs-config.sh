#!/usr/bin/env bash
set -euo pipefail

OWNER="${GITHUB_REPOSITORY_OWNER:-<用户名>}"
RAW_REPO="${GITHUB_REPOSITORY:-}"
if [[ -n "${RAW_REPO}" ]]; then
  REPO_NAME_FROM_GITHUB="${RAW_REPO##*/}"
else
  REPO_NAME_FROM_GITHUB=""
fi
REPO_NAME="${REPO_NAME_FROM_GITHUB:-${REPO_NAME:-<仓库名>}}"
SITE_URL="https://${OWNER}.github.io/${REPO_NAME}/"
REPO_URL="https://github.com/${OWNER}/${REPO_NAME}"

sed \
  -e "s|__SITE_URL__|${SITE_URL}|g" \
  -e "s|__REPO_URL__|${REPO_URL}|g" \
  -e "s|__REPO_NAME__|${OWNER}/${REPO_NAME}|g" \
  mkdocs.yml > mkdocs.generated.yml

echo "Generated mkdocs.generated.yml"
echo "SITE_URL=${SITE_URL}"
echo "REPO_URL=${REPO_URL}"
