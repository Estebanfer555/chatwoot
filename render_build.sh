#!/usr/bin/env bash
set -e

echo "🔧 Preparando entorno Ruby"
bundle binstubs bundler --force
bundle install

echo "🛠️  Preparando base de datos"
bundle exec rails db:prepare

echo "📦 Instalando dependencias JS"
yarn install

echo "⚡️ Build con Vite"
vite build
