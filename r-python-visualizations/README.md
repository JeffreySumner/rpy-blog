# Visualizations with R and Python

This post demonstrates how to create visualizations using both **R** (`ggplot2`) and **Python** (`plotnine`).

## Environment Setup

This project uses `uv` for Python dependency management.

### Python Setup (`uv`)

1.  Ensure you have [uv](https://github.com/astral-sh/uv) installed.
2.  **Navigate to this directory** in your terminal:
    ```bash
    cd "posts/Visualizations with R and Python"
    ```
3.  Sync dependencies:
    ```bash
    uv sync
    ```
    This installs `pandas`, `plotnine`, `matplotlib`, and `openpyxl`.

### R Setup (`renv`)

This project uses `renv` for R dependency management, configured to use **Posit Package Manager** for fast binary package installations on Windows.

1.  Open the project in RStudio (or set the working directory to this folder).
2.  Restore the R environment:
    ```r
    renv::restore()
    ```

## Running the Project

The Quarto document `r_python_visualizations.qmd` is configured to use the local `uv` environment:

```r
use_python(".venv/Scripts/python.exe", required = TRUE)
```

**Important:** If running code chunks interactively, ensure your **working directory** is set to this folder (`posts/Visualizations with R and Python`) so that `reticulate` can locate the local `.venv`.
