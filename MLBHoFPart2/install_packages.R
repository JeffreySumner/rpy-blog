cat("Checking renv status...\n")
renv::status()

cat("\nInstalling packages...\n")
renv::install("tidyverse")
renv::install("here")
renv::install("keras")
renv::install("reticulate")
renv::install("abind")

# Install Bioconductor packages
if (!requireNamespace("BiocManager", quietly = TRUE)) {
    install.packages("BiocManager")
}
BiocManager::install("EBImage")

cat("\nPackages installed!\n")
