##Install the 'devtools' package（Time consuming! also installing the dependencies ‘colorspace�?, ‘utf8�?, ‘vctrs�?, ‘plyr�?, ‘farver�?, ‘labeling�?, ‘munsell�?, ‘RColorBrewer�?, ‘lifecycle�?, ‘pillar�?, ‘pkgconfig�?, ‘httpuv�?, ‘xtable�?, ‘sourcetools�?, ‘fastmap�?, ‘gtable�?, ‘reshape2�?, ‘scales�?, ‘tibble�?, ‘viridisLite�?, ‘BH�?, ‘sys�?, ‘ini�?, ‘backports�?, ‘ps�?, ‘lazyeval�?, ‘shiny�?, ‘ggplot2�?, ‘later�?, ‘askpass�?, ‘clipr�?, ‘clisymbols�?, ‘curl�?, ‘fs�?, ‘gh�?, ‘purrr�?, ‘rprojroot�?, ‘whisker�?, ‘yaml�?, ‘processx�?, ‘R6�?, ‘assertthat�?, ‘fansi�?, ‘rex�?, ‘htmltools�?, ‘htmlwidgets�?, ‘magrittr�?, ‘crosstalk�?, ‘promises�?, ‘mime�?, ‘openssl�?, ‘prettyunits�?, ‘xopen�?, ‘brew�?, ‘commonmark�?, ‘Rcpp�?, ‘stringi�?, ‘stringr�?, ‘xml2�?, ‘evaluate�?, ‘praise�?, ‘usethis�?, ‘callr�?, ‘cli�?, ‘covr�?, ‘crayon�?, ‘desc�?, ‘digest�?, ‘DT�?, ‘ellipsis�?, ‘glue�?, ‘git2r�?, ‘httr�?, ‘jsonlite�?, ‘memoise�?, ‘pkgbuild�?, ‘pkgload�?, ‘rcmdcheck�?, ‘remotes�?, ‘rlang�?, ‘roxygen2�?, ‘rstudioapi�?, ‘rversions�?, ‘sessioninfo�?, ‘testthat�?, ‘withr�?)
#install.packages('devtools')
##Use Mirror from Tsinghua Univ.
#install.packages('devtools', repos = 'https://mirrors.tuna.tsinghua.edu.cn/CRAN')
#library('devtools')

##You can install latest R by downloading the source file. Alternatively, install 'updateR'
#install_github('andreacirilloac/updateR')
#library(updateR)

##Upgrade R
#updateR(admin_password = 'os_admin_user_password')


#__________________________________________________________________________#
#__________________________________________________________________________#
#__________________________________________________________________________#


# Citation: Guangchuang Yu, Li-Gen Wang, Yanyan Han and Qing-Yu He. clusterProfiler: an R package for comparing biological themes among gene clusters. OMICS: A Journal of Integrative Biology. 2012, 16(5):284-287 
# Partly refs to https://zhuanlan.zhihu.com/p/35510434


#install.packages('devtools', repos = 'https://mirrors.tuna.tsinghua.edu.cn/CRAN')
#install.packages('BiocManager', repos = 'https://mirrors.tuna.tsinghua.edu.cn/CRAN')
#install.packages("cli")
library('devtools')
#BiocManager::install(version = "3.10")
#Needed=c("bit", "formatR", "hms", "triebeard", "tweenr", "polyclip", "RcppEigen", "RcppArmadillo", "zlibbioc", "bit64", "blob", "plogr", "lambda.r", "futile.options", "progress", "urltools", "gridGraphics", "ggforce", "ggrepel", "viridis", "tidygraph", "graphlayouts", "bitops", "XVector", "IRanges", "RSQLite", "futile.logger", "snow", "data.table", "gridExtra", "fastmatch", "cowplot", "europepmc", "ggplotify", "ggraph", "ggridges", "igraph", "dplyr", "tidyselect", "RCurl", "Biostrings", "AnnotationDbi", "BiocParallel", "DO.db", "fgsea", "GOSemSim", "qvalue", "S4Vectors", "BiocGenerics", "graph", "Biobase", "GO.db", "SparseM", "matrixStats", "DBI", "enrichplot", "rvcheck", "tidyr", "org.Hs.eg.db", "KEGGgraph", "XML", "Rgraphviz", "png", "KEGGREST")
#install.packages(Needed, repos = 'https://mirrors.tuna.tsinghua.edu.cn/CRAN')
#BiocManager::install(c("DOSE","topGO","clusterProfiler","pathview"))
## Time consuming! (also installing the dependencies ‘bit�?, ‘formatR�?, ‘hms�?, ‘triebeard�?, ‘tweenr�?, ‘polyclip�?, ‘RcppEigen�?, ‘RcppArmadillo�?, ‘zlibbioc�?, ‘bit64�?, ‘blob�?, ‘plogr�?, ‘lambda.r�?, ‘futile.options�?, ‘progress�?, ‘urltools�?, ‘gridGraphics�?, ‘ggforce�?, ‘ggrepel�?, ‘viridis�?, ‘tidygraph�?, ‘graphlayouts�?, ‘bitops�?, ‘XVector�?, ‘IRanges�?, ‘RSQLite�?, ‘futile.logger�?, ‘snow�?, ‘data.table�?, ‘gridExtra�?, ‘fastmatch�?, ‘cowplot�?, ‘europepmc�?, ‘ggplotify�?, ‘ggraph�?, ‘ggridges�?, ‘igraph�?, ‘dplyr�?, ‘tidyselect�?, ‘RCurl�?, ‘Biostrings�?, ‘AnnotationDbi�?, ‘BiocParallel�?, ‘DO.db�?, ‘fgsea�?, ‘GOSemSim�?, ‘qvalue�?, ‘S4Vectors�?, ‘BiocGenerics�?, ‘graph�?, ‘Biobase�?, ‘GO.db�?, ‘SparseM�?, ‘matrixStats�?, ‘DBI�?, ‘enrichplot�?, ‘rvcheck�?, ‘tidyr�?, ‘org.Hs.eg.db�?, ‘KEGGgraph�?, ‘XML�?, ‘Rgraphviz�?, ‘png�?, ‘KEGGREST�?)


library(DOSE)
#If you use DOSE in published research, please cite:
#Guangchuang Yu, Li-Gen Wang, Guang-Rong Yan, Qing-Yu He. 
#DOSE: an R/Bioconductor package for Disease Ontology Semantic and Enrichment analysis. Bioinformatics 2015, 31(4):608-609
library(org.Hs.eg.db)
library(topGO)
library(clusterProfiler)
library(pathview)


# Human gene types
keytypes(org.Hs.eg.db)
# [1] "ACCNUM"       "ALIAS"        "ENSEMBL"      "ENSEMBLPROT"  "ENSEMBLTRANS" "ENTREZID"     "ENZYME"      
# [8] "EVIDENCE"     "EVIDENCEALL"  "GENENAME"     "GO"           "GOALL"        "IPI"          "MAP"         
# [15] "OMIM"         "ONTOLOGY"     "ONTOLOGYALL"  "PATH"         "PFAM"         "PMID"         "PROSITE"     
# [22] "REFSEQ"       "SYMBOL"       "UCSCKG"       "UNIGENE"      "UNIPROT" 




# Input several genes
MyGeneSet <- c("AASDH","ABCB11","ADAM12","ADAMTS16","ADAMTS18")
MyGeneIDSet = bitr(MyGeneSet, 
            fromType="SYMBOL", # input format is "symbol"
            toType="ENTREZID",  # output format is "ENTERZID
            OrgDb="org.Hs.eg.db") #Use human data 

#> MyGeneIDSet
#SYMBOL ENTREZID
#1    AASDH   132949
#2   ABCB11     8647
#3   ADAM12     8038
#4 ADAMTS16   170690
#5 ADAMTS18   170692



#Import genes from file
MyGeneSet2 <- read.table("GeneNames",header=FALSE) #单列基因名文�?
MyGeneSet2$V1 <- as.character(MyGeneSet2$V1) 


MyGeneIDSet2 = bitr(MyGeneSet2$V1, fromType="SYMBOL", toType=c("ENSEMBL", "ENTREZID", "GO"), OrgDb="org.Hs.eg.db")
head(MyGeneIDSet2,2)
#> MyGeneIDSet2
#SYMBOL         ENSEMBL ENTREZID
#1    AASDH ENSG00000157426   132949
#2   ABCB11 ENSG00000073734     8647
#3   ABCB11 ENSG00000276582     8647
#4   ADAM12 ENSG00000148848     8038
#5 ADAMTS16 ENSG00000145536   170690
#6 ADAMTS18 ENSG00000140873   170692


#21,126 genes as background genes
data(geneList, package="DOSE") #富集分析的背景基因集
names(geneList)

ego_ALL <- enrichGO(gene = MyGeneIDSet2$ENTREZID, 
                    universe = names(geneList), #Background Gene
                    OrgDb = org.Hs.eg.db, 
                    #keytype = 'ENSEMBL',
                    ont = "ALL", # Other options: CC or BP or MF
                    pAdjustMethod = "BH", # adjust method,  "holm�?, “hochberg�?, “hommel�?, “bonferroni�?, “BH�?, “BY�?, “fdr�?, “none”中的一�?
                    pvalueCutoff = 1, 
                    qvalueCutoff = 1,
                    readable = TRUE)

write.csv(summary(ego_ALL),"ALL-enrich.csv",row.names =FALSE)




#Drawing CC, BP, or MF
ego_MF <- enrichGO(gene = MyGeneIDSet2$ENTREZID, universe = names(geneList),OrgDb = org.Hs.eg.db,ont = "MF", pAdjustMethod = "BH",pvalueCutoff = 1,qvalueCutoff = 1,readable = TRUE)


dotplot(ego_MF,title="EnrichmentGO_MF_dot")

barplot(ego_MF, showCategory=20,title="EnrichmentGO_MF")

plotGOgraph(ego_MF,firstSigNodes = 10, useInfo = "all", sigForAll = TRUE,
            useFullNames = TRUE)
