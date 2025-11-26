#!/usr/bin/env bash
set -euo pipefail
echo "Lint YAML..."
yamllint -s .
echo "Ansible Lint..."
ansible-lint -p || true
