#!/usr/bin/env bash

# Exit on error
set -o errexit

echo "Installing gems..."
bundle install

echo "Running database migrations..."
bin/rails db:migrate

echo "Build complete!"
