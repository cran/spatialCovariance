library(spatialCovariance)

xVals <- seq(1,10,length=101)
yVals <- NULL

nrows <- 1
ncols <- 1
rowsep <- 0
colsep <- 0

for(x in xVals)
  {
    rowwidth <- x
    colwidth <- x
    info <- precompute(nrows,ncols,rowwidth,colwidth,rowsep,colsep,cat.level=0)
    V <- computeV(info,class="ldt",cat.level=0)
    yVals <- c(yVals,V[1,1])  ## should be 
  }

cat("Passes",sum((yVals-((25-4*pi-4*log(2))/12-log(xVals)))<1e-12),"of 101 tests\n")
