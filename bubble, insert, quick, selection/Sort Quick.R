Quick_Sort<-function(x,decreasing=FALSE){
  if(decreasing==F){
    Quick_Sort_I_1(x)
  }else{
    Quick_Sort_D_1(x)
  }
}
Quick_Sort_I_1<-function(x){
  left<-1
  n<-length(x)
  right<-n
  pivot<-x[right]
  
  repeat{
    while(left<=n && x[left]<=pivot){left=left+1}
    while(1<=right && x[right]>pivot){right=right-1}
    if(left>right){
      break
    }
    
    # Swap
    temp<-x[left]
    x[left]<-x[right]
    x[right]<-temp
  }
  
  # Partition
  if(n<3){
    return(x)
  }else{
    if(left==1){
      return(c(x[n],Quick_Sort_I_1(x[1:(n-1)])))
    }else if(right==n){
      return(c(Quick_Sort_I_1(x[1:(n-1)]),x[n]))
    }else {
      return(c(Quick_Sort_I_1(x[1:(right)]),Quick_Sort_I_1(x[(right+1):n])))
    }
  }
}

Quick_Sort_D_1<-function(x){
  left<-1
  n<-length(x)
  right<-n
  pivot<-x[right]
  
  repeat{
    while(left<=n && x[left]>=pivot){left=left+1}
    while(1<=right && x[right]<pivot){right=right-1}
    if(left>right){
      break
    }
    
    # Swap
    temp<-x[left]
    x[left]<-x[right]
    x[right]<-temp
  }
  
  # Partition
  if(n<3){
    return(x)
  }else{
    if(left==1){
      return(c(x[n],Quick_Sort_D_1(x[1:(n-1)])))
    }else if(right==n){
      return(c(Quick_Sort_D_1(x[1:(n-1)]),x[n]))
    }else {
      return(c(Quick_Sort_D_1(x[1:(right)]),Quick_Sort_D_1(x[(right+1):n])))
    }
  }
}