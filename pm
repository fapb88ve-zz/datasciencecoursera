pollutantmean <- function(directory, pollutant = c("sulfate", "nitrate"), id = 1:332){
    ##Setting the desired WD
    setwd(file.path(getwd(), directory))
    ##Setting the parameters for the calculations of Mean
    a <- getwd()
    b <- list.files(a)
    for(i in id){
        ##Creating the Data Frame with the desired files (this is where I think
        ##the mistake is).
        f <- data.frame(read.csv(b[i]))
        ##Giving names to the Data Frame
        colnames(f) <- c("date", "sulfate", "nitrate", "ID")
        ##Creating the Vector with the desired data entries for Mean Calculation
        d <- f[, pollutant]
        ##Mean Calculation
        e <- mean(d, na.rm = TRUE)
    }
    e
}
