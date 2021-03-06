% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/effect-sizes.R
\name{odds_ratio}
\alias{odds_ratio}
\alias{odds2d}
\alias{odds2r}
\alias{r2cohend}
\alias{cohend2r}
\alias{cohend2odds}
\title{Effect sizes conversions}
\usage{
odds_ratio(a, b = NULL, c = NULL, d = NULL, type = "hits_misses")

odds2d(odds, var = FALSE)

odds2r(odds, n1 = 4, n2 = n1, var = FALSE)

r2cohend(r, var = FALSE)

cohend2r(cohend, n1 = NULL, n2 = n1, var = FALSE)

cohend2odds(cohend, var = FALSE)
}
\arguments{
\item{a, b, c, d}{Values in the contingency table; valid if either `a`, `b`,
`c` and `d` are the same length or if `a` has length of `4` and `b`, `c`,
and `d` are `NULL`.}

\item{type}{Type of entry for [odds_ratio()]}

\item{odds, r, cohend}{A vector of effect sizes}

\item{var}{Logical, if `TRUE` converts the variance instead}

\item{n1, n2}{The ns of the groups}
}
\description{
Calculate effect sizes and conversions
}
\details{
`odds` are log odds
}
\examples{
x <- c(26, 13, 5, 6)
odds_ratio(x)           # 2.4
odds2r(2.4)             # 0.2346004
odds2d(2.4)             # 0.4826712
r2cohend(0.2346004)    # 0.4826712
cohend2odds(0.4826712) # 0.8754687
cohend2r(0.4826712)    # 0.2346004
exp(0.8754687)          # 2.4


}
