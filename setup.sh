#!/bin/bash
set -e

# Create and initialize conda environment
if ! conda info --envs | grep -q "^collab"; then
    echo "Creating conda environment 'collab'..."
    conda create -n collab -y
fi

# Install packages using conda run (avoids shell issues)
echo "Installing required Python packages..."
conda run -n collab pip install numpy igraph networkx matplotlib pandas

# Create psoriasis data directory
mkdir -p data/psoriasis

# Download the original Excel dataset from Dataverse
echo "Downloading Harvard Dataverse dataset..."
curl -L -o data/psoriasis/psoriasis.xlsx "https://dataverse.harvard.edu/api/access/datafile/2717478?format=original"

# Clone GitHub repo with co-authorship data/code
echo "Cloning GitHub repo..."
git clone https://github.com/chenyang03/co-authorship-network.git data/co-authorship-network

echo "Setup complete! All files are in data/"

