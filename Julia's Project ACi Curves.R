# Julia's project ACi curves
# Nov 20 2026

# Step 1:
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

# Step 2: 
# Define a vector of paths to the files we wish to load; in this case, we are
# loading example files included with the PhotoGEA package
file_paths <- c(('MO2_CO2_Resp_2026-10-19-1102.xlsx'),('MO3_CO2_Resp_2026-10-16-1233.xlsx'), ('MO4_CO2_Resp_2026-10-21-1352.xlsx'), ('M13_CO2_Resp_2026-10-19-1142.xlsx'), ('M17_CO2_Resp_2026-10-20-1454.xlsx'), ('M20_CO2_Resp_2026-10-21-1433.xlsx'))

