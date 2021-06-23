## write a function that will return only number columns if any data frame
## Since we will take df as input nad want df as output, we would use sapply

num_col <- function(x){
  x[,sapply(x,is.numeric)]
}

num_col(iris)
