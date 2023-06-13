#Setup--------------
  library(quanteda)
  library(readtext)
  library(tidyverse)


#Read in Data from Source -----
  D<-read.csv("./DATA/dump_2023-06-08.csv")

  ##Check Data Quality/factorize-----------------------
  D<-
    D%>%
      mutate(speaker=as.factor(speaker),
              affiliation=as.factor(affiliation))
  
  #Summarize Affiliations
  summary(D$affiliation)
  
  temp<-D%>%
    filter(affiliation=="dass")
  
  
#Transform to Corpus Object -------------------
  LAND_CORP<- corpus(D, text_field = "content")
  

  
  