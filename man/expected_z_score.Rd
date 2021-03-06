% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/zscore.R
\name{expected_z_score}
\alias{expected_z_score}
\title{Compute vector of expected Z Scores}
\usage{
expected_z_score(N0, N1, snps, W, gamma.W, freq,
  GenoProbList = make_GenoProbList(snps = snps, W = W, freq = freq))
}
\arguments{
\item{N0}{The number of Y=0}

\item{N1}{The number of Y=1}

\item{snps}{The snps at which we wish to compute the expected Z Score}

\item{W}{The true causal SNPs (these need not be in "snps")}

\item{gamma.W}{The log odds ratios of effect of the true causal SNPs (not including gamma0, the intercept term)}

\item{freq}{Haplotype frequencies as a data.frame, with column Probability indicating relative frequency in controls.}

\item{GenoProbList}{An list of objects giving the probability of seeing each {X,W} genotype vector.  This can be calculated within the function if no value supplied, or you can pass a pre-calculated version}
}
\value{
The expected Z Score for all snps in snps, assuming the causal SNPs are W
}
\description{
Compute vector of expected Z scores
}
\examples{
freq=fake_freq(nhaps=100,nsnps=5) # fake haplotype frequency data
EZ=expected_z_score(N0=1000,N1=2000,snps=paste0("s",1:5),
                    W="s1",gamma.W=log(1.5),freq=freq)
EZ # causal variant is SNP 1, with OR 1.5
}
\author{
Mary Fortune and Chris Wallace
}
