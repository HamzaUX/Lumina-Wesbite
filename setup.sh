#!/bin/bash

# Setup script for Lumina Festival project
# This script will install Node.js via nvm and then install project dependencies

set -e

echo "🚀 Setting up Lumina Festival project..."

# Load nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Check if Node.js 20 is installed, if not install it
if ! nvm list | grep -q "v20"; then
    echo "📦 Installing Node.js v20 (LTS)..."
    nvm install 20
fi

# Use Node.js 20
echo "🔧 Switching to Node.js v20..."
nvm use 20

# Verify Node.js and npm
echo "✅ Node.js version: $(node --version)"
echo "✅ npm version: $(npm --version)"

# Install dependencies
echo "📥 Installing project dependencies..."
npm install

echo ""
echo "✨ Setup complete! You can now run the project with:"
echo "   npm run dev"
echo ""
echo "⚠️  Don't forget to set your GEMINI_API_KEY in .env.local file!"
