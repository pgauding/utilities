## Patrick Gauding <patrick.gauding@gmail.com>
## Last edited: 2019-07-06

## R packages reinstall packages from previous version of R

## Import
z <- read.table("installedPackages")

## Collapse into a string
zz <- paste(z$x, collapse = ", ")
