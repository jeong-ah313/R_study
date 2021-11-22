#201811944 성정아
# data for test
set.seed(1234)
Test_Data<-data.frame(a1=1:1000,
                      a2=1000:1,
                      a3=c(1000:501,1:500),
                      a4= c(2:1000,1))

N_Replication=1 #=1


#4x4 data for result
Result_Data<-data.frame(Selection=rep(0,time=4),
                        Insertion=rep(0,time=4),
                        Bubble=rep(0,time=4),
                        Quick=rep(0,time=4),
                        Merge=rep(0,time=4))

###system time에 넣어주려고 함수로만듬
Sort_Test<-function(x,n,Sort_Index){
  for(i3 in 1:n){
    if(Sort_Index==1){
      Selection_Sort(x)
    }else if(Sort_Index==2){
      Insertion_Sort(x)
    }else if(Sort_Index==3){
      Bubble_Sort(x)
    }else if(Sort_Index==4){
      Quick_Sort(x)
    }else if(Sort_Index==5){
      Merge_Sort(x)
    }
  }  
}

for(i1 in 1:4){           
  for(i2 in 1:5){ 
    Result_Data[i1,i2]=     
      as.numeric(system.time(Sort_Test(Test_Data[,i1],N_Replication,i2))[3])
  } 
}

write.csv(Result_Data,"Sort_에너지3번과제_속도비교.csv")

