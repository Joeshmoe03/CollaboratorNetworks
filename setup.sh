#!/bin/bash
set -e

# Check if conda is available
if ! command -v conda &> /dev/null; then
    echo "conda could not be found. Please install conda and try again."
    exit 1
fi

# Create and initialize conda environment if not already created
if ! conda info --envs | grep -q "^collab"; then
    echo "Creating conda environment 'collab'..."
    conda create -n collab -y
fi

# Install packages inside the 'collab' environment
echo "Installing required Python packages..."
conda run -n collab conda install -y jupyter matplotlib pandas

# Install igraph via pip (since it's not available through conda)
conda run -n collab pip install igraph networkx numpy

# Create psoriasis data directory
mkdir -p data/psoriasis

# Download the original Excel dataset from Dataverse
echo "Downloading Harvard Dataverse dataset..."
curl -L -o data/psoriasis/psoriasis.xlsx "https://dataverse.harvard.edu/api/access/datafile/2717478?format=original"

# Clone GitHub repo with co-authorship data/code
echo "Cloning GitHub repo..."
git clone https://github.com/chenyang03/co-authorship-network.git data/co-authorship-network

echo "Setup complete! All files are in data/"

