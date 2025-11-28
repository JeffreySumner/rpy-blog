# Face of a Superstar: Part 2 (Building the Model)

This post builds the neural network model to predict Hall of Fame inductees based on player images. This is a **hybrid R and Python** project.

## Environment Setup

This project uses `uv` for Python dependency management and `renv` for R.

### Python Setup (`uv`)

1. Ensure you have [uv](https://github.com/astral-sh/uv) installed.
2. **Navigate to this directory** in your terminal:
   ```bash
   cd "posts/MLBHoFPart2"
   ```
3. Initialize the environment and sync dependencies:
   ```bash
   uv sync
   ```
   This will create a `.venv` directory with the required Python packages (`tensorflow`, `keras`, `numpy`, etc.).

### R Setup (`renv`)

This project uses `renv` for R dependency management, configured to use **Posit Package Manager** for fast binary package installations on Windows.

1. Open the project in RStudio (or set the working directory to this folder).
2. Restore the R environment:
   ```r
   renv::restore()
   ```

## Running the Project

The Quarto document `MLBHoFPart2.qmd` is configured to automatically use the `uv` environment via `reticulate`:

```r
use_python(".venv/Scripts/python.exe", required = TRUE)
```

Simply render the document or run the chunks in RStudio/VS Code.

**Important:** If running code chunks interactively (e.g., in RStudio or VS Code), ensure your **working directory** is set to this folder (`posts/MLBHoFPart2`). This ensures `reticulate` can find the `.venv` at the relative path specified.
