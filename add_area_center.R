
df_final$stateArea<-ifelse(df_final$stateName==state.name,state.area)
df_final$long<-ifelse(df_final$stateName==state.name,state.center[["x"]])
df_final$lat<-ifelse(df_final$stateName==state.name,state.center[["y"]])
