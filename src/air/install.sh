#!/bin/sh
set -e

echo "Activating feature 'Air'"

VERSION=${VERSION:-latest}
GITHUB="air-verse/air"
INSTALL_DIR="/usr/local/bin"
CMD="air"

apt update
apt install -yq curl

echo "Will try to install $VERSION version of air"

get_latest_release() {
  curl -s "https://api.github.com/repos/$GITHUB/releases/latest" |
  grep '"tag_name":' | sed -E "s/.*\"v([^\"]+)\".*/\1/"
}

if [ "$VERSION" = "latest" ]; then
  VERSION=$(get_latest_release)
fi

curl -sSL https://github.com/$GITHUB/releases/download/v"${VERSION}"/air_"${VERSION}"_linux_amd64 -o "$INSTALL_DIR"/$CMD
chmod +x "$INSTALL_DIR"/$CMD