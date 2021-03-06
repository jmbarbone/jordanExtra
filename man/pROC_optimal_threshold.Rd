% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils-pROC.R
\name{pROC_optimal_threshold}
\alias{pROC_optimal_threshold}
\title{Optimal threshold from pROC mod}
\usage{
pROC_optimal_threshold(mod, method = c("youden", "top_left"), ...)
}
\arguments{
\item{mod}{An object with class "roc" (a ROC model made with pROC::roc(.))}

\item{method}{Method to determine optimal threshold}

\item{...}{Additional arguments passed to [pROC::ci.thresholds()]}
}
\description{
Find the optimal threshold from a pROC mod
}
\examples{
x <- pROC::aSAH
mod <- pROC::roc(x$outcome, x$s100b, levels=c("Good", "Poor"))

pROC_optimal_threshold(mod)
}
