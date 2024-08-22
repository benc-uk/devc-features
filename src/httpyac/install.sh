#!/bin/sh
set -e

echo "Activating feature 'httpyac'"

VERSION=${VERSION:-latest}

echo "Will try to install $VERSION version of httpyac"

npm install -g httpyac@$VERSION