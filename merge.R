
#aasign USArrests dataset to a new dataframe
arrests<-USArrests
#Merge arrests and census dataset
df_merge<-merge(x=census,y=arrests,by.x="stateName",by.y="row.names")

