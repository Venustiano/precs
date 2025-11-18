# Quick Start Guide

This guide will help you get started with creating presentations using Quarto in GitHub Codespaces.

## Opening the Codespace

1. Go to the repository on GitHub
2. Click the green **Code** button
3. Select the **Codespaces** tab
4. Click **Create codespace on [branch]**

Wait for the environment to set up (usually 2-5 minutes on first creation).

## Creating Your First Presentation

### 1. Create a new Quarto file

Create a file with `.qmd` extension, for example `my-presentation.qmd`:

```markdown
---
title: "My Presentation"
format: revealjs
---

## First Slide

Hello World!

## Second Slide

- Point 1
- Point 2
- Point 3
```

### 2. Preview Your Presentation

In the terminal, run:

```bash
quarto preview my-presentation.qmd
```

This will:
- Render your presentation
- Start a local web server
- Open a preview in your browser
- Auto-reload when you save changes

### 3. Render to File

To create the final HTML file:

```bash
quarto render my-presentation.qmd
```

The output will be saved as `my-presentation.html`.

## Adding Code

### Python Code Block

````markdown
```{python}
#| echo: true
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(0, 10, 100)
y = np.sin(x)

plt.plot(x, y)
plt.title('Sine Wave')
plt.show()
```
````

### R Code Block

````markdown
```{r}
#| echo: true
library(ggplot2)

data <- data.frame(x = 1:10, y = rnorm(10))

ggplot(data, aes(x, y)) +
  geom_line() +
  theme_minimal()
```
````

### Code Block Options

Common options (add after `{language}`):
- `#| echo: true` - Show the code
- `#| echo: false` - Hide the code, show output
- `#| eval: false` - Show code but don't run it
- `#| output: false` - Run code but don't show output
- `#| warning: false` - Hide warnings
- `#| message: false` - Hide messages

## Presentation Formats

### RevealJS (Web-based)

```yaml
---
title: "My Presentation"
format:
  revealjs:
    theme: dark
    slide-number: true
    chalkboard: true
---
```

Available themes: `dark`, `league`, `sky`, `beige`, `simple`, `serif`, `blood`, `night`, `moon`, `solarized`

### PowerPoint

```yaml
---
title: "My Presentation"
format: pptx
---
```

### PDF (Beamer)

```yaml
---
title: "My Presentation"
format: beamer
---
```

## Slide Layouts

### Two Columns

```markdown
:::: {.columns}

::: {.column width="50%"}
Left column content
:::

::: {.column width="50%"}
Right column content
:::

::::
```

### Incremental Lists

```markdown
::: {.incremental}
- First item
- Second item
- Third item
:::
```

### Speaker Notes

```markdown
::: {.notes}
These are speaker notes that won't appear on the slide
:::
```

## Useful Commands

```bash
# Preview with auto-reload
quarto preview presentation.qmd

# Render to HTML
quarto render presentation.qmd

# Render to PowerPoint
quarto render presentation.qmd --to pptx

# Render to PDF
quarto render presentation.qmd --to beamer

# Get help
quarto help

# Check version
quarto --version
```

## Tips

1. **Use the example**: Check `example-presentation.qmd` for a complete working example
2. **Live Preview**: Always use `quarto preview` while developing - it's much faster
3. **Image Size**: Control figure sizes with `#| fig-width: 8` and `#| fig-height: 4`
4. **Caching**: Add `#| cache: true` to code blocks to speed up rendering
5. **Themes**: Try different RevealJS themes to find your style

## Resources

- [Quarto Documentation](https://quarto.org)
- [Quarto Presentations Guide](https://quarto.org/docs/presentations/)
- [RevealJS Reference](https://quarto.org/docs/presentations/revealjs/)
- [Python in Quarto](https://quarto.org/docs/computations/python.html)
- [R in Quarto](https://quarto.org/docs/computations/r.html)

## Troubleshooting

### Python packages not found
```bash
pip install package-name
```

### R packages not found
```bash
R -e "install.packages('package-name')"
```

### Port already in use
Stop the existing preview with `Ctrl+C` in the terminal, then try again.

### Rendering errors
Check the terminal output for specific error messages. Common issues:
- Missing package: Install it
- Syntax error in code block: Fix the code
- Missing closing fence: Add closing ` ``` `
