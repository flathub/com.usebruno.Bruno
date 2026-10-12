#!/bin/bash

# Make the AppImage executable
chmod +x bruno.appimage

# Use the AppImage's own extractor
./bruno.appimage --appimage-extract >/dev/null

# Move extracted contents
mv squashfs-root bruno

# Clean up
rm bruno.appimage