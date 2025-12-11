# Scooby-Doo Analytics

This post analyzes Scooby-Doo TV show data to predict IMDb scores. It is a **Pure R** project.

## Environment Setup

### R Dependencies (`renv`)

This project uses `renv` for R dependency management, configured to use **Posit Package Manager** for fast binary package installations on Windows.

1.  Open the project in RStudio (or set the working directory to this folder).
2.  Restore the R environment:
    ```r
    renv::restore()
    ```

*Note: The post loads pre-computed model results (`random_forest_results.RDS`). If you intend to re-run the modeling code (not fully shown in the rendered post), you would likely need `tidymodels`, `xgboost`, and `ranger`.*

## Running the Project

This document relies on local data files located in the `data/` directory (`scoobydoo.csv`, `model_data.csv`, `random_forest_results.RDS`). Ensure these files are present to render the document successfully.
