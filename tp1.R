data <- read.csv2(file.choose(),
                  header = TRUE,
                  sep = ";",
                  dec=".",
                  row.names = 1,
                  fileEncoding = "UTF-8",
                  stringsAsFactors = TRUE
                  )

View(data)
summary(data)

#Corrélation 2 à 2

library(corrplot)

# corplot ça prend la matrice de corrélation et les variables
# doivent être numériques

mat_cor <- cor(data[,1:16])

corrplot(mat_cor,method = "pie")

#PCA
#scale.unit = 1ACP normé
#ind.sup= individus supplémentaires les numéros 13 à 16
#quali.sup= var qualitative supplémentaires
library(FactoMineR)
res.pca=PCA(X=data,quanti.sup=13:16,quali.sup=17)
res.pca
