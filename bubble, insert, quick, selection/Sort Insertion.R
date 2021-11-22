# Bubble Sort 2019/09/25

set.seed(1234)
a<-sample(1:10,10)

Insertion_Sort<-function(x,decreasing=FALSE){
  size_x=length(x)
  for(i in 2:size_x){
    if(decreasing==FALSE){
      val<-x[i]
      j<-i-1
      while(j>=1 && val<=x[j]){
        x[j+1]<-x[j]
        j<-j-1
      }
      x[j+1]<-val
      
    }else{
      val<-x[i]
      j<-i-1
      while(j>=1 && val>=x[j]){
        x[j+1]<-x[j]
        j<-j-1
      }
      x[j+1]<-val
    }
  }
  return(x)
}