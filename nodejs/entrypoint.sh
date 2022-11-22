#!/bin/bash -l

set -e

timestamp() {
  date -u +"%FT%T.%7NZ"
}

echo "$(timestamp) - Complie Java App - info - Action Started"

echo "$(timestamp) - Complie Java App - info - Running maven command with following arguments: $INPUT_ARGS"

bash -c "npm $INPUT_ARGS"

#bash -c "chmod -R 777 target"

echo "$(timestamp) - Complie Java App - info - Action Completed"
