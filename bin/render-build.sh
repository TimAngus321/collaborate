#!/usr/bin/env bash
# exit on error
set -o errexit

echo "Installing gems..."
bundle install

echo "Running database migrations..."
bundle exec rake db:migrate

echo "Build complete!"
