##Install the 'devtools' packageï¼ˆTime consuming! also installing the dependencies â€˜colorspaceâ€?, â€˜utf8â€?, â€˜vctrsâ€?, â€˜plyrâ€?, â€˜farverâ€?, â€˜labelingâ€?, â€˜munsellâ€?, â€˜RColorBrewerâ€?, â€˜lifecycleâ€?, â€˜pillarâ€?, â€˜pkgconfigâ€?, â€˜httpuvâ€?, â€˜xtableâ€?, â€˜sourcetoolsâ€?, â€˜fastmapâ€?, â€˜gtableâ€?, â€˜reshape2â€?, â€˜scalesâ€?, â€˜tibbleâ€?, â€˜viridisLiteâ€?, â€˜BHâ€?, â€˜sysâ€?, â€˜iniâ€?, â€˜backportsâ€?, â€˜psâ€?, â€˜lazyevalâ€?, â€˜shinyâ€?, â€˜ggplot2â€?, â€˜laterâ€?, â€˜askpassâ€?, â€˜cliprâ€?, â€˜clisymbolsâ€?, â€˜curlâ€?, â€˜fsâ€?, â€˜ghâ€?, â€˜purrrâ€?, â€˜rprojrootâ€?, â€˜whiskerâ€?, â€˜yamlâ€?, â€˜processxâ€?, â€˜R6â€?, â€˜assertthatâ€?, â€˜fansiâ€?, â€˜rexâ€?, â€˜htmltoolsâ€?, â€˜htmlwidgetsâ€?, â€˜magrittrâ€?, â€˜crosstalkâ€?, â€˜promisesâ€?, â€˜mimeâ€?, â€˜opensslâ€?, â€˜prettyunitsâ€?, â€˜xopenâ€?, â€˜brewâ€?, â€˜commonmarkâ€?, â€˜Rcppâ€?, â€˜stringiâ€?, â€˜stringrâ€?, â€˜xml2â€?, â€˜evaluateâ€?, â€˜praiseâ€?, â€˜usethisâ€?, â€˜callrâ€?, â€˜cliâ€?, â€˜covrâ€?, â€˜crayonâ€?, â€˜descâ€?, â€˜digestâ€?, â€˜DTâ€?, â€˜ellipsisâ€?, â€˜glueâ€?, â€˜git2râ€?, â€˜httrâ€?, â€˜jsonliteâ€?, â€˜memoiseâ€?, â€˜pkgbuildâ€?, â€˜pkgloadâ€?, â€˜rcmdcheckâ€?, â€˜remotesâ€?, â€˜rlangâ€?, â€˜roxygen2â€?, â€˜rstudioapiâ€?, â€˜rversionsâ€?, â€˜sessioninfoâ€?, â€˜testthatâ€?, â€˜withrâ€?)
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
## Time consuming! (also installing the dependencies â€˜bitâ€?, â€˜formatRâ€?, â€˜hmsâ€?, â€˜triebeardâ€?, â€˜tweenrâ€?, â€˜polyclipâ€?, â€˜RcppEigenâ€?, â€˜RcppArmadilloâ€?, â€˜zlibbiocâ€?, â€˜bit64â€?, â€˜blobâ€?, â€˜plogrâ€?, â€˜lambda.râ€?, â€˜futile.optionsâ€?, â€˜progressâ€?, â€˜urltoolsâ€?, â€˜gridGraphicsâ€?, â€˜ggforceâ€?, â€˜ggrepelâ€?, â€˜viridisâ€?, â€˜tidygraphâ€?, â€˜graphlayoutsâ€?, â€˜bitopsâ€?, â€˜XVectorâ€?, â€˜IRangesâ€?, â€˜RSQLiteâ€?, â€˜futile.loggerâ€?, â€˜snowâ€?, â€˜data.tableâ€?, â€˜gridExtraâ€?, â€˜fastmatchâ€?, â€˜cowplotâ€?, â€˜europepmcâ€?, â€˜ggplotifyâ€?, â€˜ggraphâ€?, â€˜ggridgesâ€?, â€˜igraphâ€?, â€˜dplyrâ€?, â€˜tidyselectâ€?, â€˜RCurlâ€?, â€˜Biostringsâ€?, â€˜AnnotationDbiâ€?, â€˜BiocParallelâ€?, â€˜DO.dbâ€?, â€˜fgseaâ€?, â€˜GOSemSimâ€?, â€˜qvalueâ€?, â€˜S4Vectorsâ€?, â€˜BiocGenericsâ€?, â€˜graphâ€?, â€˜Biobaseâ€?, â€˜GO.dbâ€?, â€˜SparseMâ€?, â€˜matrixStatsâ€?, â€˜DBIâ€?, â€˜enrichplotâ€?, â€˜rvcheckâ€?, â€˜tidyrâ€?, â€˜org.Hs.eg.dbâ€?, â€˜KEGGgraphâ€?, â€˜XMLâ€?, â€˜Rgraphvizâ€?, â€˜pngâ€?, â€˜KEGGRESTâ€?)


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
MyGeneSet2 <- read.table("GeneNames",header=FALSE) #å•åˆ—åŸºå› åæ–‡ä»?
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
data(geneList, package="DOSE") #å¯Œé›†åˆ†æçš„èƒŒæ™¯åŸºå› é›†
names(geneList)

ego_ALL <- enrichGO(gene = MyGeneIDSet2$ENTREZID, 
                    universe = names(geneList), #Background Gene
                    OrgDb = org.Hs.eg.db, 
                    #keytype = 'ENSEMBL',
                    ont = "ALL", # Other options: CC or BP or MF
                    pAdjustMethod = "BH", # adjust method,  "holmâ€?, â€œhochbergâ€?, â€œhommelâ€?, â€œbonferroniâ€?, â€œBHâ€?, â€œBYâ€?, â€œfdrâ€?, â€œnoneâ€ä¸­çš„ä¸€ç§?
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
