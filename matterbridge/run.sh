#!/bin/bash

# Set the frontend port from the config.json or default to 8283
FRONTEND_PORT=${INGRESS_PORT:-8283}

# Define the base directory for Matterbridge
HOME_DIR=/addons/matterbridge

# Define the subdirectories for Matterbridge
MATTERBRIDGE_PLUGINS=$HOME_DIR/Matterbridge   # For matterbridge plugins
MATTERBRIDGE_STORAGE=$HOME_DIR/.matterbridge  # For matterbridge storage

# Create directories if they don't exist
mkdir -p $HOME_DIR
mkdir -p $MATTERBRIDGE_PLUGINS
mkdir -p $MATTERBRIDGE_STORAGE

# Start Matterbridge with the frontend port specified
matterbridge -docker -ingress -frontend $FRONTEND_PORT -homedir $HOME_DIR
