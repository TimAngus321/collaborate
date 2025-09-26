#!/usr/bin/env bash
# exit on error
set -o errexit

bundle install
# Skip problematic binstub update for now
# bundle exec rails app:update:bin 
bundle exec rake assets:precompile
bundle exec rake assets:clean
bundle exec rake db:migrate
# bundle exec rails db:seed
