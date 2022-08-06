#!/bin/bash

echo PATH
echo $PATH

# Install cooklang
curl -LO https://github.com/cooklang/CookCLI/releases/download/v0.1.6/CookCLI_0.1.6_linux_amd64.zip
unzip CookCLI*.zip

bundle exec bridgetown deploy
