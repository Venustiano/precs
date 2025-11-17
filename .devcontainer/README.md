# Development Container Configuration

This directory contains the GitHub Codespaces configuration for the precs repository.

## What's Included

### Software
- **Quarto CLI** (latest) - For rendering presentations
- **Python 3.11** - With data science stack
- **R** (latest) - With tidyverse and visualization packages

### Python Packages
- jupyter, jupyterlab
- matplotlib, seaborn, plotly
- numpy, pandas, scipy
- scikit-learn
- ipykernel

### R Packages
- Tidyverse suite (dplyr, tidyr, ggplot2, readr, stringr, purrr, tibble, forcats, lubridate)
- rmarkdown, knitr
- plotly
- reticulate (for Python/R integration)

### VS Code Extensions
- Quarto extension
- Python extension with Pylance
- Jupyter extension
- R extension with debugger

## Files

- `devcontainer.json` - Main configuration file for the dev container
- `setup.sh` - Post-create script that installs additional packages
- `README.md` - This file

## Customization

To add more packages:

### Python
Edit `setup.sh` and add package names to the `pip install` command.

### R
Edit `setup.sh` and add package names to the R `install.packages()` call.

### VS Code Extensions
Edit `devcontainer.json` and add extension IDs to the `extensions` array.

## Troubleshooting

If the container fails to build:
1. Check the logs in the Codespaces creation panel
2. Verify internet connectivity for package downloads
3. Check if R/Python package names are correct

## Manual Setup

If you need to reinstall packages manually:

```bash
# Python packages
pip install package-name

# R packages
R -e "install.packages('package-name', repos='https://cloud.r-project.org/')"
```
