#1
x=runif(10,0,100)
y=runif(10,0,100)
df=data.frame(x,y)

#2
data_distance<-matrix(,nrow=10,ncol=10)
for(i in 1:10){
  for(j in 1:10){
    if(i==j){
      data_distance[i,j]=0}
    data_distance[i,j]=sqrt((df[i,1]-df[j,1])^2+(df[i,2]-df[j,2])^2)
  }
}

#3
Random_Sequence<-function(x){
  n=length(x)
  for(i in 1:(n-1)){
    j=floor(runif(1,min=i,max=(n+1)))
    temp_value=x[j]
    x[j]=x[i]
    x[i]=temp_value
  }
  return(x)
}

move_sequence<-matrix(,nrow=10,ncol=10)
for(i in 1:10){
  move_sequence[i,]<-Random_Sequence(1:10)
}
move_sequence2<-cbind(move_sequence,move_sequence[,1])

#4
data<-data.frame(x1<-rep(0,time=10),
                 x2<-rep(0,time=10),
                 x3<-rep(0,time=10),
                 x4<-rep(0,time=10),
                 x5<-rep(0,time=10),
                 x6<-rep(0,time=10),
                 x7<-rep(0,time=10),
                 x8<-rep(0,time=10),
                 x9<-rep(0,time=10),
                 x10<-rep(0,time=10),
                 distance<-rep(0,time=10))
for(i in 1:10){
  sum=0
  for(j in 1:10){
    data[i,j]<-data_distance[move_sequence2[i,j],move_sequence2[i,(j+1)]]  
    sum=sum+data[i,j]
  }
  data[i,11]<-sum
}

#5
size_x=10
  for(i in 1:(size_x-1)){
    min=data$distance[i]
    min_index=i
      for(j in (i+1):size_x){
        if(data$distance[j]<min){
          min=data$distance[j]
          min_index=j
        }
      }
  temp_value=data[min_index,]
  data[min_index,]=data[i,]
  data[i,]=temp_value
  }