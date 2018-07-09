file <- Industry_Breakdown_Will

newInd <- vector('character', length = length(file$ID))

is.na(file$`Partial NAICS`[1])

for (i in 1:length(file$`Partial NAICS`)) {
  if (is.na(file$`Partial NAICS`[i])) {
    file$`Partial NAICS`[i] <- "00"
  }
}

i <- 1
is.character(file$`Partial NAICS`[2])


file$`Partial NAICS`[2] == "92"

file$`Partial NAICS`[134] == "11"

for (i in 1:length(newInd)) {
  ##industryConv <- function(naics) {
  if (file$`Partial NAICS`[i] == "11") {
    newInd[i] <- "Agriculture"
    
    
  } else if (file$`Partial NAICS`[i] == "21") {
    newInd[i] <- "Mining"
    
    
  } else  if (file$`Partial NAICS`[i] == "22") {
    newInd[i] <- "Utilities"
    
    
  } else  if (file$`Partial NAICS`[i] == "23") {
    newInd[i] <- "Construction"
    
    
  } else  if (file$`Partial NAICS`[i] == "31" ||
              file$`Partial NAICS`[i] == "32" ||
              file$`Partial NAICS`[i] == "33") {
    newInd[i] <- "Manufacturing"
    
    
  } else if (file$`Partial NAICS`[i] == "42") {
    newInd[i] <- "Wholesale Trade"
    
    
  } else if (file$`Partial NAICS`[i] == "44" ||
             file$`Partial NAICS`[i] == "45") {
    newInd[i] <- "Retail Trade"
    
    
  } else if (file$`Partial NAICS`[i] == "48" ||
             file$`Partial NAICS`[i] == "49") {
    newInd[i] <- "Transportation and Warehousing"
    
    
  } else if (file$`Partial NAICS`[i] == "51") {
    newInd[i] <- "Information"
    
    
  } else if (file$`Partial NAICS`[i] == "52") {
    newInd[i] <- "Finance and Insurance"
    
    
  } else if (file$`Partial NAICS`[i] == "53") {
    newInd[i] <- "Real Estate Rental and Leasing"
    
    
  } else if (file$`Partial NAICS`[i] == "54") {
    newInd[i] <- "Professional, Scientific, and Technical Services"
    
    
  } else if (file$`Partial NAICS`[i] == "55") {
    newInd[i] <- "Management of Companies and Enterprises"
    
    
  } else if (file$`Partial NAICS`[i] == "56") {
    newInd[i] <-
      "Administrative and Support and Waste Management and Remediation Services"
    
    
  } else if (file$`Partial NAICS`[i] == "61") {
    newInd[i] <- "Educational Services"
    
    
  } else if (file$`Partial NAICS`[i] == "62") {
    newInd[i] <- "Health Care and Social Assistance"
    
    
  } else if (file$`Partial NAICS`[i] == "71") {
    newInd[i] <- "Arts, Entertainment, and Recreation"
    
    
  } else if (file$`Partial NAICS`[i] == "72") {
    newInd[i] <- "Accomodation and Food Services"
    
    
  } else if (file$`Partial NAICS`[i] == "81") {
    newInd[i] <- "Other Services (except Public Administration"
    
    
  } else if (file$`Partial NAICS`[i] == "92") {
    newInd[i] <- "Finance and Insurance"
    
    
  } else {
    newInd[i] <- "none"
    
  }
  
}

newInd

file
newFile <- cbind(file, newInd)
View(newFile)
