#!/usr/bin/env bash

# Regenerar el binstub de bundle
bundle binstubs bundler --force

# Continuar con la preparación de la base de datos
bundle exec rails db:chatwoot_prepare

