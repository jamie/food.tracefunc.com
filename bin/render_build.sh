#!/bin/bash

# Install cooklang
mkdir local-bin
curl -LO https://github.com/cooklang/CookCLI/releases/download/v0.1.6/CookCLI_0.1.6_linux_amd64.zip
unzip CookCLI*.zip
mv cook local-bin
export PATH=$PWD/local-bin:$PATH

bundle exec bridgetown deploy
