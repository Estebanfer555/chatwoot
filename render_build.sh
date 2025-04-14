#!/usr/bin/env bash
set -e

bundle binstubs bundler --force
bundle install
bundle exec rails db:prepare
yarn install
vite build
