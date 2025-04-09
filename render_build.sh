#!/usr/bin/env bash

# Regenerar el binstub de bundle
bundle binstubs bundler --force

# Preparar DB (Chatwoot)
bundle exec rails db:chatwoot_prepare

# Compilar assets
RAILS_ENV=production bin/vite build
