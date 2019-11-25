#! /bin/bash --posix

set -x

# For debugging.
env
ls -lF /proc/self/fd
tty

darch=$(dpkg --print-architecture)
case "$darch" in
  amd64)
    arch='amd64'
    ;;
  i386)
    arch='686'
    ;;
  *)
    echo "Unsupported architecture: $darch"
    exit 1
esac

apt-cache --names-only search \
	  "linux-image-[[:digit:].-]+-$arch\$"

main="$(apt-cache --names-only search \
	  "linux-image-[[:digit:].-]+-$arch\$" |\
          awk '{print $1}' | sort -V | tail -n 1)"

echo "Installing: $main"
apt-get -q -y --force-yes --no-install-recommends install "$main" || exit

# This both lists the contents and verifies that they were created, despite
# ignoring potential errors because a boot loader was not installed.
ls -lF /boot /lib/modules
