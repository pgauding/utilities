## Patrick Gauding <patrick.gauding@gmail.com>
## Last edited: 2019-07-06

## R packages save current version before update

## Save the matrix and extract the necessary list
obj <- as.data.frame(installed.packages())

## Not attractive but functional
targ <- as.list(obj[,1])
targ <- unlist(targ)
targ <- levels(targ)

## Get current R version
current <- paste(version$major, version$minor, sep = ".")

## Write out to utilities directory
write.table(targ, file = paste("installedPackages", current, sep="-"))
