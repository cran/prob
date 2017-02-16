####################################
# Functions to generate data
# for pedagogical purposes

#######################################################
# continuous X data

genXdata <- function(n, nvar = 1,
                     mu = rep(0, nvar),
                     Sigma = diag(length(mu)),
                     varnames = paste("x", 1:length(mu), sep = ""),
                     roundto = NULL
                     ){
  tmp <- as.data.frame(MASS::mvrnorm(n, mu = mu, Sigma = Sigma))
  names(tmp) <- varnames
  if (!is.null(roundto)){
    tmp <- round(tmp, roundto)
  }
  tmp
}

# genXdata(10, nvar = 3, roundto = 2)
# X = genXdata(10, nvar = 3, roundto = 2)

#######################################################
# logistic regression data

genLogRegData <- function(xdata,
                          beta = rep(1, ncol(xdata)),
                          yname = "y"){
  tmp <- as.matrix(xdata) %*% beta
  probs <- exp(tmp)/(1 + exp(tmp))
  y <- apply(probs, 1, function(p){rbinom(1, size = 1, prob = p)})
  resdata <- cbind(xdata, y)
  as.data.frame(resdata, col.names = c(names(xdata), yname))
}


#params <- c(1,2,3,4)
#require(MASS)
#xmean <- Null(params)[ , 1]
#X = genXdata(10, mu = xmean, roundto = 2)
#genLogRegData(X, beta = params)


######################################################3
# contingency tables

genIndepTable <- function(n = sample(100:500, size = 1),
                          prow = 1:3, pcol = 1:4,
                          dmnames = list(X = paste("x", 1:length(prow), sep = ""),
                                         Y = paste("y", 1:length(pcol), sep = "")),
                          addmargins = TRUE,
                          as.df = FALSE, untable = TRUE){
  prow <- prow/sum(prow)
  pcol <- pcol/sum(pcol)
  pmatrix <- outer(prow, pcol)
  probs <- as.numeric(pmatrix)
  x <- factor(sample(1:length(probs), size = n, replace = TRUE, prob = probs),
              levels = 1:length(probs))
  tmp <- matrix(as.integer(table(x)), nrow = length(prow))
  dimnames(tmp) <- dmnames
  tmp <- as.table(tmp)

  if (as.df){
    tmp <- as.data.frame(tmp)
    if (untable){
      tmp <- with(tmp, reshape::untable(tmp, Freq))
      tmp[ , "Freq"] <- NULL
      rownames(tmp) <- 1:dim(tmp)[1]
    }
    tmp
  } else if (addmargins) {
    addmargins(tmp)
  } else {
    tmp
  }
}
  
# 
# genIndepTable(n = 100)
# genIndepTable(n = 100, nfixed = TRUE)
# genIndepTable(n = 100, nfixed = TRUE, as.df = TRUE)
# genIndepTable(n = 100, nfixed = TRUE, as.df = TRUE, untable = FALSE)
# 
# tmp = genIndepTable(n = 10, nfixed = TRUE, as.df = TRUE)
# tmp
# 
# model.matrix(~., data = tmp)
# tmp2 = as.data.frame(model.matrix(~ X*Y, data = tmp))
# tmp2
# 
# genLogRegData(tmp2)
# 
# A = genIndepTable(n = 500, nfixed = TRUE, as.df = TRUE)
# chisq.test(xtabs(~., data = A))
# 


######################################################3
# general two-way tables

gen2wayTable <- function(n = sample(100:500, size = 1),
                          pmatrix = matrix(1:12, nrow = 3),
                          dmnames = list(X = paste("x", 1:nrow(pmatrix), sep = ""),
                                         Y = paste("y", 1:ncol(pmatrix), sep = "")),
                          addmargins = TRUE,
                          as.df = FALSE, untable = TRUE){
  probs <- as.numeric(pmatrix)
  x <- factor(sample(1:length(probs), size = n, replace = TRUE, prob = probs),
              levels = 1:length(probs))
  tmp <- matrix(as.integer(table(x)), nrow = nrow(pmatrix))
  dimnames(tmp) <- dmnames
  tmp <- as.table(tmp)

  if (as.df){
    tmp <- as.data.frame(tmp)
    if (untable){
      tmp <- with(tmp, reshape::untable(tmp, Freq))
      tmp[ , "Freq"] <- NULL
      rownames(tmp) <- 1:dim(tmp)[1]
    }
    tmp
  } else if (addmargins) {
    addmargins(tmp)
  } else {
    tmp
  }
}

# 
# gen2wayTable(n = 100)
# gen2wayTable(n = 100, nfixed = TRUE)
# gen2wayTable(n = 100, nfixed = TRUE, as.df = TRUE)
# gen2wayTable(n = 100, nfixed = TRUE, as.df = TRUE, untable = FALSE)
# 
# w = matrix(c(8, 5, 3, 2, 5, 5), nrow = 2)
# 
# B = gen2wayTable(n = 300, pmatrix = w, addmargins = FALSE)
# chisq.test(B)
# 

