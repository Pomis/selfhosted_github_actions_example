#!/bin/bash

# Install Android SDK components in local directory

echo "Setting up Android SDK in $HOME/Android/sdk"

# Create necessary directories
mkdir -p ~/Android/sdk
cd ~/Android/sdk

# Download command line tools if not present
if [ ! -d "cmdline-tools" ]; then
    echo "Downloading Android command line tools..."
    curl -o commandlinetools.zip https://dl.google.com/android/repository/commandlinetools-mac-11076708_latest.zip
    unzip -q commandlinetools.zip
    mkdir -p cmdline-tools/latest
    mv cmdline-tools/* cmdline-tools/latest/ 2>/dev/null || true
    rm commandlinetools.zip
fi

# Set up environment for this script
export ANDROID_HOME=$HOME/Android/sdk
export PATH=$PATH:$ANDROID_HOME/cmdline-tools/latest/bin

# Accept licenses
yes | sdkmanager --licenses

# Install required components
echo "Installing Android SDK components..."
sdkmanager "platform-tools"
sdkmanager "build-tools;34.0.0"
sdkmanager "platforms;android-34"

echo "Android SDK setup complete!"
echo "Run 'source ~/.zshrc' to reload your environment variables"