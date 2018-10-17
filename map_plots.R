
library("ggplot2")
df_final$stateName<-tolower(df_final$stateName)
map_areaColor<-ggplot(df_final,aes(map_id=stateName)) +
           geom_map(map=us,aes(fill=stateArea)) +
           expand_limits(x=df_final$long,y=df_final$lat) + 
           coord_map()
