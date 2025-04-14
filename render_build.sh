#!/usr/bin/env bash
set -e

echo "🔧 Preparando entorno Ruby"
bundle binstubs bundler --force
bundle install

echo "🛠️  Preparando base de datos"
bundle exec rails db:prepare

echo "🔧 Activando Corepack y configurando PNPM"
corepack enable
corepack prepare pnpm@10.2.0 --activate

echo "📦 Instalando dependencias JS con PNPM"
pnpm install

echo "⚡️ Build con Vite"
pnpm run build
