#!/usr/bin/env bash

packages=(
  csslint
  diff-so-fancy
  jshint
  npm-check-updates
)

npm install -g "${packages[@]}"
