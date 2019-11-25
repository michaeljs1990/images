#! /bin/bash --posix

set -eux
set -o pipefail

# Grab site-specific variables for build environment.
. /etc/environment.build

echo "root:$default_root_password" | chpasswd -e
