## ----setup, include = FALSE----------------------------------------------
library(plinkQC)
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----set parameters------------------------------------------------------
package.dir <- find.package('plinkQC')
indir <- file.path(package.dir, 'extdata')
qcdir <- tempdir()
name <- 'data'
path2plink <- "~/bin"

## ----individual QC,  eval=FALSE, fig.height=12, fig.width=9--------------
#  fail_individuals <- perIndividualQC(indir=indir, qcdir=qcdir, name=name,
#                              refSamplesFile=paste(indir, "/HapMap_ID2Pop.txt",
#                                                   sep=""),
#                              refColorsFile=paste(indir, "/HapMap_PopColors.txt",
#                                                   sep=""),
#                              prefixMergedDataset="data.HapMapIII",
#                              path2plink=path2plink, do.run_check_ancestry = FALSE,
#                              interactive=TRUE, verbose=TRUE)
#  

## ----load individualQC, echo=FALSE, fig.height=12, fig.width=9, fig.align='center'----
par(mfrow=c(2,1), las=1)
knitr::include_graphics("individualQC.pdf")

## ----overview individual QC, eval=FALSE----------------------------------
#  overview_individuals <- overviewPerIndividualQC(fail_individuals,
#                                                  interactive=TRUE)

## ----load overviewIndividualQC, echo=FALSE-------------------------------
par(mfrow=c(2,1), las=1)
knitr::include_graphics("overviewQC.pdf")
knitr::include_graphics("overviewAncestryQC.pdf")

## ----marker QC, eval=FALSE-----------------------------------------------
#  fail_markers <- perMarkerQC(indir=indir, qcdir=qcdir, name=name,
#                              path2plink=path2plink,
#                              verbose=TRUE, interactive=TRUE,
#                              showPlinkOutput=FALSE)

## ----load markerQC, echo=FALSE, fig.height=9, fig.width=6, fig.align='center'----
par(mfrow=c(2,1), las=1)
knitr::include_graphics("markerQC.pdf")

## ----overview marker QC, eval=FALSE--------------------------------------
#  overview_marker <- overviewPerMarkerQC(fail_markers, interactive=TRUE)

## ----load overviewMarkerQC, echo=FALSE-----------------------------------
par(mfrow=c(2,1), las=1)
knitr::include_graphics("overviewMarkerQC.pdf")

## ----clean data, eval=FALSE----------------------------------------------
#  Ids  <- cleanData(indir=indir, qcdir=qcdir, name=name, path2plink=path2plink,
#                              verbose=TRUE, showPlinkOutput=FALSE)

## ----check sex, eval=FALSE, fig.height=3, fig.width=5, fig.align='center'----
#  fail_sex <- check_sex(indir=indir, qcdir=qcdir, name=name, interactive=TRUE,
#                        verbose=TRUE, path2plink=path2plink)

## ----load checkSex, echo=FALSE, fig.align='center'-----------------------
knitr::include_graphics("checkSex.pdf")

## ----check het miss, eval=FALSE, fig.height=3, fig.width=5, fig.align='center'----
#  fail_het_imiss <- check_het_and_miss(indir=indir, qcdir=qcdir, name=name,
#                                       interactive=TRUE, path2plink=path2plink)

## ----load checkHetImiss, echo=FALSE, fig.align='center'------------------
knitr::include_graphics("checkHetImiss.pdf")

## ----check related, eval=FALSE, fig.height=3, fig.width=5, fig.align='center'----
#  exclude_relatedness <- check_relatedness(indir=indir, qcdir=qcdir, name=name,
#                                           interactive=TRUE,
#                                           path2plink=path2plink)

## ----load checkRelatedness, echo=FALSE, fig.align='center'---------------
knitr::include_graphics("checkRelatedness.pdf")

## ----check ancestry, eval=FALSE, fig.height=3, fig.width=5, fig.align='center'----
#  exclude_ancestry <- check_ancestry(indir=indir, qcdir=qcdir, name=name,
#                              refSamplesFile=paste(indir, "/HapMap_ID2Pop.txt",
#                                                   sep=""),
#                              refColorsFile=paste(indir, "/HapMap_PopColors.txt",
#                                                   sep=""),
#                              prefixMergedDataset="data.HapMapIII",
#                              path2plink=path2plink, run.check_ancestry = FALSE,
#                              interactive=TRUE)

## ----load ancestry, echo=FALSE, fig.align='center'-----------------------
knitr::include_graphics("checkAncestry.pdf")

## ----check snp missing, eval=FALSE---------------------------------------
#  fail_snpmissing <- check_snp_missingness(indir=indir, qcdir=qcdir, name=name,
#                                           interactive=TRUE,
#                                           path2plink=path2plink,
#                                           showPlinkOutput=FALSE)

## ----load snp missing, echo=FALSE, fig.align='center'--------------------
knitr::include_graphics("snpmissingness.pdf")

## ----check hwe, eval=FALSE-----------------------------------------------
#  fail_hwe <- check_hwe(indir=indir, qcdir=qcdir, name=name, interactive=TRUE,
#                        path2plink=path2plink, showPlinkOutput=FALSE)

## ----load hwe, echo=FALSE, fig.align='center'----------------------------
knitr::include_graphics("hwe.pdf")

## ----check maf, eval=FALSE-----------------------------------------------
#  fail_maf <- check_maf(indir=indir, qcdir=qcdir, name=name, interactive=TRUE,
#                        path2plink=path2plink, showPlinkOutput=FALSE)

## ----load  maf, echo=FALSE, fig.align='center'---------------------------
knitr::include_graphics("maf.pdf")
