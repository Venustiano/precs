# Contributing to precs

Thank you for your interest in contributing to the precs repository! This guide will help you add your presentations to the repository.

## Getting Started

### Using GitHub Codespaces (Recommended)

1. Open the repository in GitHub Codespaces
2. Wait for the environment to set up (all dependencies will be installed automatically)
3. You're ready to create presentations!

### Local Development

If you prefer to work locally, you'll need to install:

- [Quarto CLI](https://quarto.org/docs/get-started/)
- Python 3.11+ with packages: `jupyter`, `matplotlib`, `numpy`, `pandas`, `seaborn`, `plotly`
- R with packages: `rmarkdown`, `knitr`, `ggplot2`, `dplyr`, tidyverse

## Adding a New Presentation

### 1. Create Your Presentation File

Create a new `.qmd` file in the repository root or in a topic-specific subdirectory:

```bash
# Example: Create a presentation about data visualization
touch data-visualization.qmd
```

### 2. Structure Your Presentation

Start with the YAML front matter:

```yaml
---
title: "Your Presentation Title"
subtitle: "Optional Subtitle"
author: "Your Name"
date: "2024-11-17"
format:
  revealjs:
    theme: dark
    slide-number: true
    chalkboard: true
---
```

### 3. Add Your Content

Use level 2 headers (`##`) for slides:

```markdown
## Introduction

Your introduction content here

## Main Points

- Point 1
- Point 2
- Point 3
```

### 4. Add Code Examples

Include Python or R code blocks:

````markdown
```{python}
#| echo: true
import matplotlib.pyplot as plt
# Your code here
```

```{r}
#| echo: true
library(ggplot2)
# Your code here
```
````

### 5. Test Your Presentation

Preview your presentation locally:

```bash
quarto preview your-presentation.qmd
```

This will open a browser window with live reload enabled.

### 6. Commit Your Changes

```bash
git add your-presentation.qmd
git commit -m "Add presentation: Your Title"
git push
```

## Best Practices

### File Naming

- Use lowercase and hyphens: `machine-learning-intro.qmd`
- Be descriptive but concise
- Avoid spaces and special characters

### Code Style

**Python:**
- Follow PEP 8 guidelines
- Use meaningful variable names
- Add comments for complex logic

**R:**
- Use tidyverse style guide
- Use `<-` for assignment
- Use pipes (`|>` or `%>%`) for readability

### Presentation Style

1. **Keep slides concise**: Aim for 1-2 main points per slide
2. **Use visuals**: Plots and diagrams are better than text walls
3. **Code visibility**: Use `#| echo: true` when you want to show code
4. **Progressive disclosure**: Use incremental lists for complex points
5. **Speaker notes**: Add notes for context using `::: {.notes}`

### File Organization

Organize presentations by topic:

```
precs/
├── data-science/
│   ├── intro-to-pandas.qmd
│   └── visualization-ggplot2.qmd
├── machine-learning/
│   ├── linear-regression.qmd
│   └── neural-networks.qmd
└── statistics/
    ├── hypothesis-testing.qmd
    └── probability.qmd
```

## Code Review Checklist

Before submitting your presentation, ensure:

- [ ] YAML front matter is valid
- [ ] All code blocks execute without errors
- [ ] Presentation renders successfully (`quarto render`)
- [ ] Images and plots display correctly
- [ ] No sensitive information is included
- [ ] File names follow conventions
- [ ] Documentation is updated if needed

## Getting Help

- Check the [Quick Start Guide](QUICKSTART.md)
- Review [example-presentation.qmd](example-presentation.qmd)
- Read the [Quarto documentation](https://quarto.org/docs/presentations/)
- Open an issue for questions or problems

## Code of Conduct

- Be respectful and inclusive
- Provide constructive feedback
- Help others learn and grow
- Follow the license terms

## License

By contributing, you agree that your contributions will be licensed under the same license as the project (see [LICENSE](LICENSE)).

---

Happy presenting! 🎉
