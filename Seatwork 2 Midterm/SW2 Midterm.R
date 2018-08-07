add5numbers <- function (num1, num2, num3, num4, num5){
  sum_nums = num1 + num2 + num3 + num4 + num5 
  sum_nums
}

meanFuncation <- function(dataset_csv, removeNA= TRUE){
  col_num <- (data_csv)
  means_per_col <- numeric (col_num)
  for(element in 1: col_num){
  means_per_con[element] <- mean(dataset_csv[ ,elememnt], na.rm = removeNA)  
  }
  means_percol
}
#1
data <-  midetrmseatwork_data
meanwind <- function(data, Ozoneval, Tempval){
  apply(subset(data, Ozone>Ozoneval&Temp>Tempval&!is.na(Wind), select=Wind,), 2,mean)  
}
meanwind(data,25,70)

#2
meanTemp <- function(data, Monthval, Dayval){
  apply(subset(data, Month==Monthval&Day==Dayval&!is.na(Temp), select=Temp,), 2,mean)  
}
meanTemp(data, 9,8)

#3
meanOzone <- function(data, Monthval){
  apply(subset(data, Month==Monthval&!is.na(Ozone), select=Ozone,), 2,min)  
}
meanOzone(data, 5)







