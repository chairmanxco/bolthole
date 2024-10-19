#!/bin/sh

### This script installs the software suite used in this project.

# Crash on the first non-zero exit code.
set -e

# Local constants.
PIAPPS_URL="https://raw.githubusercontent.com/Botspot/pi-apps/master/install"
# Paths.
PATH_TO_HERE=$(dirname "$0")
PIAPPS_MANAGE="$HOME/pi-apps/manage"

##########
# BASICS #
##########

sudo apt install --yes gedit gedit-plugin-draw-spaces  # Text editor.
wget -qO- $PIAPPS_URL | bash  # Install Pi-Apps.

##############
# ENCRYPTION #
##############

$PIAPPS_MANAGE install VeraCrypt  # Install encryption software.

###################
# SYNCHRONISATION #
###################

sudo apt install --yes grsync  # Install synchronisation software.
