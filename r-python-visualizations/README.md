# Visualizations with R and Python

This post demonstrates how to create visualizations using both **R** (`ggplot2`) and **Python** (`plotnine`).

## Environment Setup

This post is reproducible with both:

- `renv` for R dependencies
- `uv` for Python dependencies (post-local `.venv`)

### Python Setup (`uv`)

1.  Ensure you have [uv](https://github.com/astral-sh/uv) installed.
2.  **Navigate to this directory** in your terminal:
    ```bash
    cd posts/r-python-visualizations
    ```
3.  Sync dependencies:
    ```bash
    uv sync
    ```
    This creates `.venv/` and installs `pandas`, `plotnine`, `matplotlib`, and `openpyxl`.

### R Setup (`renv`)

This project uses `renv` for R dependency management, configured to use **Posit Package Manager** for fast binary package installations on Windows.

1.  Open the project in RStudio (or set the working directory to this folder).
2.  Restore the R environment:
    ```r
    renv::restore()
    ```

## Running the Project

Render from repo root:

```bash
quarto render posts/r-python-visualizations/index.qmd --execute
```

The post includes setup checks that:

- activate post-local `renv`
- restore `renv` if required R packages are missing
- create the post-local `.venv` with `uv sync` if missing

## Required Data Files

Place these files in `posts/r-python-visualizations/data/`:

- `ca_np.csv`
- `ci_np.xlsx`
