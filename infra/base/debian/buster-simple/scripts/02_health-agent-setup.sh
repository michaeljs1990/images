#! /bin/bash --posix

set -eux
set -o pipefail

# TODO: Replace this with prom exporters
# . /etc/environment.build
# 
# readonly dir='/tmp/health-agent-unpack'
# 
# rm -rf "$dir" || exit
# mkdir -p "$dir" || exit
# get-url "$health_agent_directory/health-agent.tar.gz" - | tar -C "$dir" -xz
# 
# "$dir/install"
# rm -rf "$dir"

# Ensure clean exit if we got this far.
exit 0
