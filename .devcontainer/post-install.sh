#!/bin/bash
set -ex

##
## Create some aliases
##
#echo 'alias ll="ls -alF"' >> $HOME/.bashrc
#echo 'alias la="ls -A"' >> $HOME/.bashrc
#echo 'alias l="ls -CF"' >> $HOME/.bashrc

# is ssh working properly?
# ssh -T git@github.com

# is gpg working properly?
# echo "test" | gpg --clearsign

# Convenience workspace directory for later use
WORKSPACE_DIR=$(pwd)

echo "Done!"