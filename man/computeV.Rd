\name{computeV}
\alias{computeV}

\title{Compute Covariance Matrix}

\description{
  Observations are averages over congruent rectangular plots that like
  in a lattice.  For extensive observations one needs to multiply the
  matrix by the $area^2$ where $area$ is the common area of
  each plot.

  Various different classes of covariance functions, generalised
  covariance functions and their derivatives wrt parameters
  are built into this library.  These include the Cauchy and Mat\'{e}rn
  covariance functions as well as specific sub models such as the
  Bessel$_0$, Exponential, Bessel$_1$, spline and logarithmic covariance
  functions.}

\synopsis{
computeV(info,class="ldt",params,eps=1e-8,cat.level=0)
}

\usage{
V <- computeV(info,class="matern",params=c(0.2,0.5), \dots)  ## matern
model with inverse range 0.2 and smoothness 0.5
V <- computeV(info,class="ldt",eps=1e-10,cat.level=1)  ## logarithmic model
 }

\arguments{
  \item{info}{Result of the precompute stage}
  \item{class}{The class of covariance functions,"ldt", "bess0", "exp",
    "bess1", "power", "powerNI", "matern", "spline", "cauchy".  Can also
    be used to
    compute the derivatives of the covariance matrices for specific
    models, for example "dbess0", "dexp", "dexp2", "dbess1",
    "dpowerNI".}
  \item{params}{Parameters that go with a specific class of models, for
    the "matern" class it requires an inverse range parameter and a
    smoothness parameter, for example \code{params=c(1,0.5)}, this
    corresponds to the case when \code{class="exp", params=c(1)}.}
  \item{eps}{Relative Tolerance for one dimensional numerical
    integration}
  \item{cat.level}{Controls level of time output, takes values 0, 0.5, 1}
}

\author{David Clifford}

\keyword{spatial}
