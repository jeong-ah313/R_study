# Bubble Sort 2019/09/25

set.seed(1234)
a<-sample(1:10,10)

Bubble_Sort<-function(x,decreasing=FALSE){
  size_x=length(x)
  for(i in 1:(size_x-1)){
    flag=F
    if(decreasing==FALSE){
      for(j in 1:(size_x-i)){
        if(x[j]>x[j+1]){
          temp_value=x[j]
          x[j]=x[j+1]
          x[j+1]=temp_value
          flag=T
        }
      }
    }else{
      for(j in 1:(size_x-i)){
        if(x[j]<x[j+1]){
          temp_value=x[j]
          x[j]=x[j+1]
          x[j+1]=temp_value
          flag=T
        }
      }
    }
    if(flag==F){
      break
    }
  }
  return(x)
}