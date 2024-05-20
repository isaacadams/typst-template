#!/bin/bash
set -ex

WORKSPACE_DIR=$1

git config --global --add safe.directory $WORKSPACE_DIR
