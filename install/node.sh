#!/usr/bin/env bash

packages=(
  csslint
  diff-so-fancy
  jshint
  jsonlint
  npm-check-updates
)

npm install -g "${packages[@]}"
