
#comparing statenames and then assigning area to each state in df_final dataset
df_final$stateArea<-ifelse(df_final$stateName==state.name,state.area)

#comparing statenames and then assigning lonngitude value to each state in df_final dataset
df_final$long<-ifelse(df_final$stateName==state.name,state.center[["x"]])

#comparing statenames and then assigning latitude value to each state in df_final dataset
df_final$lat<-ifelse(df_final$stateName==state.name,state.center[["y"]])


str(df_final)

#converting stateName to lower case
df_final$stateName<-tolower(df_final$stateName)
