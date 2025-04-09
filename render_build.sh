#!/usr/bin/env bash

# Regenerar binstubs de Bundler
bundle binstubs bundler --force

# Preparar la base de datos (propio de Chatwoot)
bundle exec rails db:chatwoot_prepare

# Compilar los assets de Vite
RAILS_ENV=production bin/vite build
