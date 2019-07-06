## Patrick Gauding <patrick.gauding@gmail.com>
## Last edited: 2019-07-06

## R packages save and reinstall script

## Save the matrix and extract the necessary list
obj <- as.data.frame(installed.packages())

## Not attractive but functional
targ <- as.list(obj[,1])
targ <- unlist(targ)
targ <- levels(targ)

## Collapse into a string
z <- paste(targ, collapse = ", ")

## Get current R version
current <- paste(version$major, version$minor, sep = ".")

## Write out to utilities directory
write.table(z, file = paste("installedPackages", current, sep="-"))
