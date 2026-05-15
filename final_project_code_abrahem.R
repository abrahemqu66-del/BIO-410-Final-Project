library(Biostrings)
library(DECIPHER)
allcontigs <- c()
for(i in 1:6){
+   contigs <- readDNAStringSet(paste0('~/Downloads/abrahem/t', i, '_out/final.contigs.fa'))
+   allcontigs <- c(allcontigs, contigs)
+ }
allcontigs <- do.call(c, allcontigs)
toalign <- allcontigs[which(nchar(allcontigs) > 5000)]
names(toalign) <- 1:length(toalign)
alignment <- AlignSeqs(toalign)
BrowseSeqs(alignment,htmlFile="abrahem Final Project.html")
Treeline(alignment,method="ML",showPlot=T)

