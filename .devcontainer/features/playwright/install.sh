#!/usr/bin/env bash

set -e

npm install -g -y @playwright/cli@latest @playwright/mcp@0.0.70
env DEBIAN_FRONTEND=noninteractive npx --yes playwright@latest install-deps chromium
playwright-cli install-browser chromium
mkdir -p /home/vscode/.playwright
printf '%s\n' '{"browser":{"browserName":"chromium","contextOptions":{"ignoreHTTPSErrors":true}}}' > /home/vscode/.playwright/cli.config.json