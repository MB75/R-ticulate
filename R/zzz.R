rticulateStartupMessage <- function()
{
  rticulate <- cat(message(r"(
       ______      _________  __  _______   __    __  __        __       _________  ________
      / ___  |    /________/ / / / _____/  / /   / / / /       /  \     /________/ / ______/
     / /__/ /        / /    / / / /       / /   / / / /       / /\ \       / /    / /_____
    / _  __/  ===   / /    / / / /       / /   / / / /       / /__\ \     / /    / ______/
   / / \ \         / /    / / / /_____  / /___/ / / /_____  / /————\ \   / /    / /_____
  /_/   \_\       /_/    /_/  \______/  \______/  \______/ /_/      \_\ /_/     \______/
)",
"\nCompanion package to \"R-ticulate — A Beginner's Guide to Data Analysis for Natural Scientists\" by Martin Bader and Sebastian Leuzinger (first edition 2024, ISBN: 978-1-119-71799-7).\nThis package contains 12 interactive exercises (Chapter_01,..., Chapter_12) and the standard error function se() (type ?se to view the help page).",
"\n\nGet started by running the following code (copy and paste into the console and press Enter): "), "run_tutorial(name = \"Chapter_01\", package = \"Rticulate\")", sep = "")
}

.onAttach <- function(lib, pkg)
{
  # Startup message
  rticulate <- rticulateStartupMessage()
  if(!interactive())
    packageStartupMessage(rticulate)
  invisible()
  ## Load required package
  library(learnr)
  library(rstudioapi)
}

executeCommand(commandId = "refreshPackages")

# .onAttach <- function(libname, pkgname) {
#
#   ## Install and load required packages
# library(MASS)
# ## List of required packages
# pkgs <- c("dplyr", "tidyr", "ggplot2", "ggpubr", "ggcorrplot", "nlme", "mgcv", "relaimpo", "car", "emmeans", "multcomp", "multcompView", "nlsMicrobio", "rpart", "cowplot", "rsample", "kableExtra", "knitr", "shiny", "learnr")
#
# install_missing_packages <- function(pkgs) {
#   inst.pack <- rownames(utils::installed.packages()) # list of installed packages
#
# if (length(setdiff(x = pkgs, y = inst.pack)) > 0) { # setdiff() returns the elements of x that don't occur in y
#     install.packages(setdiff(pkgs, inst.pack), dependencies = TRUE)
# }
# }
#
# ## Batch install required packages
# invisible(suppressWarnings(suppressMessages(sapply(X = pkgs, FUN = install_missing_packages))))
#
# ## Batch load packages
# invisible(suppressWarnings(suppressMessages(sapply(X = pkgs, FUN = library, character.only = TRUE, warn.conflicts = FALSE))))
# }
#
# # remove.packages("relaimpo")
