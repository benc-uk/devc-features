#!/bin/bash
set -e

source dev-container-features-test-lib

check "validate version" bash -c "air -v | grep -q 'built with Go'"

reportResults