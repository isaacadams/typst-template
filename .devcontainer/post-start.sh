#!/bin/bash
set -ex

_WORKSPACE_DIR=$1
_GNUPGHOME=$2

git config --global --add safe.directory $_WORKSPACE_DIR

# loading gpg configuration to ensure gpg can properly sign commits if git is configured for that
rsync -av \
    --exclude '*.lock' \
    --exclude '*.lock.*' \
    --exclude '.#lk0x*' \
    /tmp/.gnupg /root

chmod 700 /root/.gnupg
