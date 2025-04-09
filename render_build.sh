#!/usr/bin/env bash
echo "Running Chatwoot DB setup..."
bundle exec rails db:chatwoot_prepare
