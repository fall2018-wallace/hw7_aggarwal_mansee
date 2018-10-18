
library("ggplot2")
df_final$stateName<-tolower(df_final$stateName)
map_areaColor<-ggplot(df_final,aes(map_id=stateName)) +
           geom_map(map=us,aes(fill=stateArea)) +
           expand_limits(x=df_final$long,y=df_final$lat) + 
           coord_map()
           
map_murderColor<-ggplot(df_final,aes(map_id=stateName)) +
  geom_map(map=us,aes(fill=Murder)) +
  expand_limits(x=df_final$long,y=df_final$lat) + 
  coord_map()
  
map_population<-map_murderColor +
  geom_point(data=df_final,aes(x=long,y=lat,size=population))
  
zooMap_murderColor<-ggplot(df_final,aes(map_id=stateName)) +
  geom_map(map=us,aes(fill=Murder)) +
  coord_map()+
  xlim(long_nyc-10,long_nyc+10)+
  ylim(lat_nyc-10,lat_nyc+10)
  
  
 
