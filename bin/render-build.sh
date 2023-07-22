#!/usr/bin/env bash
# exit on error
set -o errexit

bundle install
# Try deploy without these as without yarn this can't run
# bundle exec rake assets:precompile
# bundle exec rake assets:clean
bundle exec rake db:migrate
bundle exec rails db:seed