install.packages('devtools',repos='https://mirrors.tuna.tsinghua.edu.cn/CRAN')
library('devtools')
library(DOSE)

library(org.Hs.eg.db)
library(topGO)
library(clusterProfiler)
library(pathview)
keytypes(org.Hs.eg.db)
MyGeneSet <- c("CTSH","DOC2A","ICA1L","LACTB","SNX32","STX4","ACE","CARHSP","STX")
MyGeneIDSet = bitr(MyGeneSet, 
                   fromType="SYMBOL", # input format is "symbol"
                   toType="ENTREZID",  # output format is "ENTERZID
                   OrgDb="org.Hs.eg.db") #Use human data 
data(geneList, package="DOSE") #富集分析的背景基因集
names(geneList)

ego_ALL <- enrichGO(gene = MyGeneIDSet$ENTREZID, 
                    universe = names(geneList), #Background Gene
                    OrgDb = org.Hs.eg.db, 
                    #keytype = 'ENSEMBL',
                    ont = "ALL", # Other options: CC or BP or MF
                    pAdjustMethod = "BH", # adjust method,  "holm“, “hochberg”, “hommel”, “bonferroni”, “BH”, “BY”, “fdr”, “none”中的一种
                    pvalueCutoff = 1, 
                    qvalueCutoff = 1,
                    readable = TRUE)

write.csv(summary(ego_ALL),"ALL-enrich.csv",row.names =FALSE)




#Drawing CC, BP, or MF
ego_MF <- enrichGO(gene = MyGeneIDSet$ENTREZID, universe = names(geneList),OrgDb = org.Hs.eg.db,ont = "MF", pAdjustMethod = "BH",pvalueCutoff = 1,qvalueCutoff = 1,readable = TRUE)


dotplot(ego_MF,title="EnrichmentGO_MF_dot")

barplot(ego_MF, showCategory=20,title="EnrichmentGO_MF")

plotGOgraph(ego_MF,firstSigNodes = 10, useInfo = "all", sigForAll = TRUE,
            useFullNames = TRUE)

