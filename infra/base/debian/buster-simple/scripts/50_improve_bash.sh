#! /bin/bash --posix

set -e

cat >> /etc/bash.bashrc <<EOF
# Add some convenient aliases.
alias la='ls -AFl'
alias lf='ls -F'
alias ll='ls -Fl'
EOF
