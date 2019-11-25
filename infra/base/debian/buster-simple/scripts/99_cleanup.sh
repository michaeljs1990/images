#!/bin/bash
set -x

find /var/log -type f -print0 | xargs -0r rm
