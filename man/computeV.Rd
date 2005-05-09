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
computeV(info,class="ldt",params,rel.tol = .Machine$double.eps^0.25,abs.tol = rel.tol,cat.level=0)
}

\usage{
V <- computeV(info,class="matern",params=c(0.2,0.5), \dots)  ## matern model with inverse range 0.2 and smoothness 0.5
V <- computeV(info,class="ldt",rel.tol=1e-10,abs.tol=rel.tol,cat.level=1)  ## logarithmic model
 }

\arguments{
  \item{info}{Result of the precompute stage}
  \item{class}{The class of covariance functions,"ldt", "bess0", "exp",
    "bess1", "power", "powerNI", "matern", "spline", "cauchy".  Can also
    be used to
    compute the derivatives of the covariance matrices for specific
    models, for example "dbess0", "dexp", "dexp2", "dbess1",
    "dpowerNI".  Can also be used for any isotropic function K, simply
    define a function K in the workspace that has two arguments,
    distance and a vector of parameters.  Then call
  \code{computeV} with \code{class="special"}.}
  \item{params}{Parameters that go with a specific class of models, for
    the "matern" class it requires an inverse range parameter and a
    smoothness parameter, for example \code{params=c(1,0.5)}, this
    corresponds to the case when \code{class="exp", params=c(1)}.}
  \item{rel.tol}{Relative Tolerance for one dimensional numerical
    integration}
  \item{abs.tol}{Absolute Tolerance for one dimensional numerical integration}
  \item{cat.level}{Controls level of time output, takes values 0, 0.5, 1}
}

\author{David Clifford}

\keyword{spatial}

