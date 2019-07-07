## Patrick Gauding <patrick.gauding@gmail.com>
## Last edited: 2019-07-06

## R packages reinstall packages from previous version of R

## Import
z <- read.table("installedPackages")

## Collapse into a string
##zz <- paste(z$x, collapse = ", ")
needToInstall <- function(z) {

    tmp <- c()
    for(i in 1:length(z$x)){
        tmp[i] <- is.element(z$x[i], installed.packages()[,1])
        tmp
    }
    tmp
}
        
    
