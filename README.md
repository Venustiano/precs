# precs
Presentations

## Overview

This repository is set up for creating and presenting slides using Quarto with support for both Python and R code execution.

## Getting Started with GitHub Codespaces

This repository includes a complete development environment configuration for GitHub Codespaces that comes pre-installed with:

- **Quarto CLI** - For creating presentations
- **Python 3.11** - With common data science packages (numpy, pandas, matplotlib, etc.)
- **R** - With tidyverse and visualization packages
- **VS Code Extensions** - For Quarto, Python, R, and Jupyter support

### Opening in Codespaces

1. Click the green "Code" button on GitHub
2. Select the "Codespaces" tab
3. Click "Create codespace on [branch-name]"

The environment will automatically set up with all required tools installed.

## Creating Presentations

### Sample Presentation

A sample presentation (`example-presentation.qmd`) is included to demonstrate:
- Python code blocks with visualizations
- R code blocks with ggplot2
- Mixed language workflows

### Rendering Presentations

To render a Quarto presentation:

```bash
quarto render your-presentation.qmd
```

To preview with live reload:

```bash
quarto preview your-presentation.qmd
```

### Presentation Formats

Quarto supports multiple presentation formats:
- RevealJS (web-based, default)
- PowerPoint
- Beamer (PDF)

## Project Structure

```
precs/
├── .devcontainer/           # GitHub Codespaces configuration
│   ├── devcontainer.json   # Container configuration
│   └── setup.sh            # Environment setup script
├── example-presentation.qmd # Sample presentation
└── README.md               # This file
```

## Working with Quarto

### Basic Quarto Presentation Structure

```markdown
---
title: "Your Title"
format: revealjs
---

## Slide 1

Content here

## Slide 2

More content
```

### Adding Code Blocks

Python:
````markdown
```{python}
import numpy as np
print("Hello from Python!")
```
````

R:
````markdown
```{r}
library(ggplot2)
print("Hello from R!")
```
````

## Resources

- [Quarto Documentation](https://quarto.org)
- [Quarto Presentations](https://quarto.org/docs/presentations/)
- [RevealJS Format](https://quarto.org/docs/presentations/revealjs/)

## License

See [LICENSE](LICENSE) file for details.
