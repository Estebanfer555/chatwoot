#!/usr/bin/env bash
set -e

echo "🔧 Preparando entorno Ruby"
bundle binstubs bundler --force
bundle install

echo "🛠️  Preparando base de datos"
bundle exec rails db:prepare

echo "🔧 Activando Corepack y configurando Yarn"
corepack enable
corepack prepare yarn@stable --activate

echo "📦 Instalando dependencias JS"
yarn install

echo "⚡️ Build con Vite"
vite build
