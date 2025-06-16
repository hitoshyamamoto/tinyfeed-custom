#!/bin/bash

# Download Tinyfeed if not exists
if [ ! -f "tinyfeed" ]; then
    echo "Downloading Tinyfeed..."
    wget -O tinyfeed https://github.com/TheBigRoomXXL/tinyfeed/releases/latest/download/tinyfeed_linux_amd64
    chmod +x tinyfeed
fi

# Create output directory if not exists
mkdir -p public

# Run Tinyfeed
echo "Generating feed reader..."
./tinyfeed \
    --input feeds.txt \
    --output public/index.html \
    --limit 100 \
    --limit-per-feed 20 \
    --name "AI News Feed" \
    --description "A collection of AI and technology news feeds"

echo "Done! Open public/index.html in your browser to view the feed reader." 