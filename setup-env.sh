#!/bin/bash

# Set Android SDK environment variables
export ANDROID_HOME=$HOME/Android/sdk
export PATH=$PATH:$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/cmdline-tools/latest/bin

echo "Android SDK environment variables set:"
echo "ANDROID_HOME=$ANDROID_HOME"
echo "PATH includes Android SDK tools"

# Java Configuration
export JAVA_HOME=/opt/homebrew/opt/openjdk@17
export PATH=$JAVA_HOME/bin:$PATH
echo "JAVA_HOME=$JAVA_HOME"