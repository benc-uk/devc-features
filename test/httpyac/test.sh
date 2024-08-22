#!/bin/bash
set -e

source dev-container-features-test-lib

check "validate version" bash -c "httpyac -V"

reportResults