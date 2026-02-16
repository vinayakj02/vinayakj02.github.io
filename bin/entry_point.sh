#!/bin/bash
set -e

# Ensure dependencies are up to date with the current volume state
bundle check || bundle install

# Execute the Jekyll serve command
exec bundle exec jekyll serve --watch --port 8080 --host 0.0.0.0 --livereload