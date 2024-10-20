#!/bin/sh

### This script initiates the demo.

# Crash on the first non-zero exit code.
set -e

# Local constants.
PATH_TO_HERE=$(dirname "$0")
PATH_TO_DEMO_DIR_SRC="$PATH_TO_HERE/demo_data"
PATH_TO_DEMO_DIR_DST="$HOME/bolthole_demo"

############
# RUN DEMO #
############

# Create demo directory.
rm -rf $PATH_TO_DEMO_DIR_DST
mkdir --parents $PATH_TO_DEMO_DIR_DST
for item in "$PATH_TO_DEMO_DIR_SRC/*"; do
    cp -r $item $PATH_TO_DEMO_DIR_DST
done

# Open GRSync.
grsync &

# Print instructions.
echo "Welcome to the Bolthole demo."
echo " "
echo "INSTRUCTIONS:"
echo "1. Open GRSync."
echo "2. Use GRSync to compare tree0 and tree1 in $PATH_TO_DEMO_DIR_DST."
echo "3. When ready, press ENTER to terminate the demo."

# Wait for user to press ENTER.
read key

# Clean.
rm -rf $PATH_TO_DEMO_DIR_DST

# Bye.
echo "Demo complete."
