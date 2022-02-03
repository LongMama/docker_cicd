#!/bin/bash -x

set -e

echo migrate...
bin/rails db:migrate
echo start...
bundle exec rails s -b '0.0.0.0'
