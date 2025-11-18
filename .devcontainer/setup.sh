#!/bin/bash
set -e

echo "Setting up Quarto development environment..."

# Update package lists
echo "Updating package lists..."
sudo apt-get update

# Install Python packages commonly used in presentations
echo "Installing Python packages..."
pip install --upgrade pip
pip install \
    jupyter \
    matplotlib \
    numpy \    Rscript -e 'if (!requireNamespace("reticulate", quietly = TRUE)) install.packages("reticulate", repos = "https://cloud.r-project.org/"); reticulate::py_install("matplotlib", pip = TRUE)'    Rscript -e 'if (!requireNamespace("reticulate", quietly = TRUE)) install.packages("reticulate", repos = "https://cloud.r-project.org/"); reticulate::py_install("matplotlib", pip = TRUE)'
    pandas \
    seaborn \
    plotly \
    scipy \
    scikit-learn \
    ipykernel \
    jupyterlab

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
