#20191015화 201811944성정아
#2.1 병합정렬 (Merge Sort) 프로그램을 작성하시오. (프로그램 코드 출력)
Merge_Sort_D <- function(V) {
  if(length(V)==0) stop("No elements to sort")
  
  
  merge_fn_D<-function(first_half,second_half){
    result<-c()
    while(length(first_half)>0 && length(second_half)>0){
      if(first_half[1]>=second_half[1]){
        result<-c(result,first_half[1])
        first_half<-first_half[-1]
      } else{
        result<-c(result,second_half[1])
        second_half<-second_half[-1]
      }
    }
    if(length(first_half)>0) result<-c(result,first_half)
    if(length(second_half)>0) result<-c(result,second_half)
    return(result)
  }
  
  if(length(V)<=1) V else {
    middle<-length(V)/2
    first_half<-V[1:floor(middle)]
    second_half<-V[floor(middle+1):length(V)]
    first_half<-Merge_Sort_D(first_half)
    second_half<-Merge_Sort_D(second_half)
    if(first_half[length(first_half)]>=second_half[1]){
      c(first_half,second_half)
    } else{
      merge_fn_D(first_half,second_half)
    }
  }
}