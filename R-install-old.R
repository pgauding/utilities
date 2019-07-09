## Patrick Gauding <patrick.gauding@gmail.com>
## Last edited: 2019-07-06

## R packages reinstall packages from previous version of R

## Collapse into a string
##zz <- paste(z$x, collapse = ", ")
needToInstall <- function() {

    z <- "~/GIT/utilities/installedPackages"
    z <- read.table(z)
    
    tmp <- c()
    for(i in 1:length(z$x)) {
        tmp[i] <- is.element(z$x[i], installed.packages()[,1])
        tmp
    }

    ## Extract the names needed
    box <- cbind(levels(unlist(as.list(z))), tmp)
    out <- box[,1][box[,2] == FALSE]
    ##out

    ## Install necessary packages
    install.packages(out, dependencies = TRUE)
}
