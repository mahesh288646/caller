#!/bin/bash -l

set -e

timestamp() {
  date -u +"%FT%T.%7NZ"
}
echo "$(timestamp) - Complie Java App - info - Running maven command with following arguments: $1"

bash -c "$MAVEN_HOME/bin/mvn $1"

bash -c "chmod -R 777 target"

echo "$(timestamp) - Complie Java App - info - Action Completed"
