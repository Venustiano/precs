#!/bin/bash
set -e

echo "Setting up Quarto development environment..."

# Update package lists
echo "Updating package lists..."
sudo apt-get update

echo "Installing build tools and R development headers..."
sudo apt-get install -y --no-install-recommends \
    build-essential \
    r-base-dev \
    libcurl4-openssl-dev \
    libssl-dev \
    libxml2-dev \
    libicu-dev \
    zlib1g-dev \
    liblzma-dev

# Install Python packages commonly used in presentations
echo "Installing Python packages..."
pip install --upgrade pip
pip install \
    jupyter \
    matplotlib \
    numpy \
    pandas \
    seaborn \
    plotly \
    scipy \
    scikit-learn \
    ipykernel \
    jupyterlab

echo "Installing lintr as a prebuilt binary (required by the VS Code R extension)..."
sudo apt-get install -y --no-install-recommends r-cran-lintr

# Install R packages commonly used in presentations
echo "Installing R packages..."
sudo R -e "install.packages(c('rmarkdown', 'knitr', 'ggplot2', 'dplyr', 'tidyr', 'readr', 'stringr', 'purrr', 'tibble', 'forcats', 'lubridate', 'plotly', 'reticulate'), repos='https://cloud.r-project.org/')"

# Verify installations
echo "Verifying installations..."
echo "Python version:"
python --version

echo "R version:"
R --version | head -n 1

echo "Quarto version:"
quarto --version

echo "Setup complete!"
