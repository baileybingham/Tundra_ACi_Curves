# Julia's project ACi curves
# Nov 20 2026

library(plantecophys)

#M20 - Control
Aci_M20 <- read.table("M20_CO2_Resp_2026-10-21-1433.csv", header=TRUE, sep=",")
Fit_Aci_M20 <- fitaci(Aci_M20)
plot(Fit_Aci_M20)
summary(Fit_Aci_M20)

#M04 - Control
Aci_M04 <- read.table("M04_CO2_Resp_2026-10-21-1352.csv", header=TRUE, sep=",")
Fit_Aci_M04_bi <- fitaci(Aci_M04, fitmethod = "bilinear")
plot(Fit_Aci_M04_bi)
summary(Fit_Aci_M04_bi)

#M02 - Heat wave
Aci_M02 <- read.table("M02_CO2_Resp_2026-10-19-1102.csv", header=TRUE, sep=",")
Fit_Aci_M02_bi <- fitaci(Aci_M02, fitmethod = "bilinear")
plot(Fit_Aci_M02_bi)
summary(Fit_Aci_M02_bi)
## Had to do fitmethod = "bilinear" (not totally sure what this means though) because I got the error 
## "Error: Could not fit curve - check quality of data or fit using fitmethod='bilinear'." 

#M17 - Control
Aci_M17 <- read.table("M17_CO2_Resp_2026-10-20-1454.csv", header=TRUE, sep=",")
Fit_Aci_M17_bi <- fitaci(Aci_M17, fitmethod = "bilinear")
plot(Fit_Aci_M17_bi)
summary(Fit_Aci_M17_bi)

#M13 - Heat wave
Aci_M13 <- read.table("M13_CO2_Resp_2026-10-19-1142.csv", header=TRUE, sep=",")
Fit_Aci_M13_bi <- fitaci(Aci_M13, fitmethod = "bilinear")
plot(Fit_Aci_M13_bi)
summary(Fit_Aci_M13_bi)

#M03 - Heat wave
Aci_M03 <- read.table("M03_CO2_Resp_2026-10-16-1233.csv", header=TRUE, sep=",")
Fit_Aci_M03_bi <- fitaci(Aci_M03, fitmethod = "bilinear")
plot(Fit_Aci_M03_bi)
summary(Fit_Aci_M03_bi)
