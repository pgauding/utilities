## Patrick Gauding <patrick.gauding@gmail.com>
## Last edited: 2019-07-06

## R packages reinstall packages from previous version of R

## Import
z <- read.table("installedPackages")

## Collapse into a string
##zz <- paste(z$x, collapse = ", ")
needToInstall <- function(x) {
    
    for(i in 1:length(x)){
        is.element(x[i]), installed.packages()[,1]
    }
}
        
    
