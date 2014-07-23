# Script for Testing

dataset2 <- read.csv("pml-testing.csv", na.strings = c("NA", ""))

#pred <- predict(modFit,dataset2)
answers = rep("A", 20)
answers = predict(modFit,dataset2)


pml_write_files(answers)

pml_write_files = function(x){
  n = length(x)
  for(i in 1:n){
    filename = paste0("problem_id_",i,".txt")
    write.table(x[i],file=filename,quote=FALSE,row.names=FALSE,col.names=FALSE)
  }
}