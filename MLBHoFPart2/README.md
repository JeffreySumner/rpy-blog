# Face of a Superstar: Part 2 (Building the Model)

This post builds the neural network model to predict Hall of Fame inductees based on player images. This is a **Python** project.

## Environment Setup

This project uses `uv` for Python dependency management.

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

## Running the Project

The Quarto document `MLBHoFPart2.qmd` is configured to use the `mlbhofpart2` Jupyter kernel, which runs in the `uv` environment.

1. Register the kernel (only needs to be done once):
   ```bash
   uv run python -m ipykernel install --user --name=mlbhofpart2 --display-name "Python (MLBHoFPart2)"
   ```

2. Render the document or run the chunks in RStudio/VS Code.

   **Note:** When running `quarto preview` from the command line, you must tell Quarto to use the project's Python environment (which contains the required `nbformat` package):
   
   **PowerShell:**
   ```powershell
   $env:QUARTO_PYTHON="path/to/.venv/Scripts/python.exe"; quarto preview MLBHoFPart2.qmd
   ```
   
   **Bash:**
   ```bash
   QUARTO_PYTHON=path/to/.venv/bin/python quarto preview MLBHoFPart2.qmd
   ```

**Important:** If running code chunks interactively (e.g., in RStudio or VS Code), ensure your **working directory** is set to this folder (`posts/MLBHoFPart2`). This ensures the kernel can find the `.venv` at the relative path specified.
