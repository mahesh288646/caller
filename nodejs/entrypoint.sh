#!/bin/bash -l

set -e

timestamp() {
  date -u +"%FT%T.%7NZ"
}

echo "$(timestamp) - Complie Node App - info - Running NodeJS command with following arguments: $1"

bash -c "chmod -R 777 node_modules"

echo "$(timestamp) - Complie Java App - info - Action Completed"
