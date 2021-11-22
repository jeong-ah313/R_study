# Selection Sort 2019/09/18

set.seed(1234)
a<-sample(1:10000,10000)

Selection_Sort<-function(x,decreasing=FALSE){
  size_x=length(x)
  for(i in 1:(size_x-1)){
    if(decreasing==FALSE){
      min=x[i]
      min_index=i
      for(j in (i+1):size_x){
        if(x[j]<min){
          min=x[j]
          min_index=j
        }
      }
      temp_value=x[min_index]
      x[min_index]=x[i]
      x[i]=temp_value
    }else{
      max=x[i]
      max_index=i
      for(j in (i+1):size_x){
        if(x[j]>max){
          max=x[j]
          max_index=j
        }
      }
      temp_value=x[max_index]
      x[max_index]=x[i]
      x[i]=temp_value
    }
  }
  return(x)
}