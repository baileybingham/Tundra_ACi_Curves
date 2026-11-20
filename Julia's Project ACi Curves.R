# Julia's project ACi curves
# Nov 20 2026

## Step 1:
# Load required packages
library(PhotoGEA)
library(lattice)

# Check the PhotoGEA version
expected_version  <- '1.4.0'
installed_version <- as.character(packageVersion('PhotoGEA'))

if (compareVersion(expected_version, installed_version) != 0) {
  warning(
    'This script was written for PhotoGEA version ', expected_version,
    ' but version ', installed_version,
    ' is installed; this may cause unexpected errors to occur.'
  )
}

## Step 2: 
# Define a vector of paths to the files we wish to load; in this case, we are
# loading example files included with the PhotoGEA package
file_paths <- c(
  "M02_CO2_Resp_2026-10-19-1102.xlsx",
  "M03_CO2_Resp_2026-10-16-1233.xlsx",
  "M04_CO2_Resp_2026-10-21-1352.xlsx",
  "M13_CO2_Resp_2026-10-19-1142.xlsx",
  "M17_CO2_Resp_2026-10-20-1454.xlsx",
  "M20_CO2_Resp_2026-10-21-1433.xlsx"
)

## Step 3: 
# Load each file, storing the result in a list
gasex_exdf_list <- lapply(file_paths, function(fpath) {
  read_gasex_file(fpath, 'time')
})

## Step 4: 
# Get the names of all columns that are present in all of the data files
columns_to_keep <- do.call(identify_common_columns, gasex_exdf_list)
# Extract just these columns
gasex_exdf_list <- lapply(gasex_exdf_list, function(x) {
  x[ , columns_to_keep, TRUE]
})
# Use `rbind` to combine all the data
gasex_data <- do.call(rbind, gasex_exdf_list)

## Step 5
# Create a new identifier column formatted like `instrument - species - plot`
gasex_data[ , 'curve_identifier'] <-
  paste(gasex_data[ , 'Leaf number'], '-', gasex_data[ , 'Monolith'], '-', gasex_data[ , 'Functional group'])


