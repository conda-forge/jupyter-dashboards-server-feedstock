#!/bin/bash

# --ignore-scripts: Some dependencies postinstall scripts (phosphor-dragdrop:`npm dedupe`)
# causes some permissions errors when run as root on docker (CI)
npm install --ignore-scripts
./node_modules/.bin/gulp build
npm install -g --ignore-scripts
