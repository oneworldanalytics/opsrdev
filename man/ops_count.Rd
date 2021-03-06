% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ops_count.R
\name{ops_count}
\alias{ops_count}
\title{Count the number of results from a search query.}
\usage{
ops_count(query = "", type = "NULL", start = NULL, end = NULL)
}
\arguments{
\item{query}{character or combinations using CQL}

\item{type}{Patent document sections. title = "ti", title and abstract = "ta", biblio(front page) = "biblio", default = biblio (NULL)}

\item{start}{use unquoted YYYYMMDD or YYYY}

\item{end}{as for start}
}
\value{
numeric count of results in OPS by search type (document sections) and date ranges.
}
\description{
Retrieves counts of results from OPS by type (title, title and abstract, biblio = default) and publication date range. Use this function to gain an idea of the total number of results for a search and to use date ranges to limit the results to below the 2,000 limit. The use ops_urls to generate the urls to fetch the data with ops_iterate (and process with service functions such as ops_biblio).
}
\details{
The function presently retrieves data only on the publication date, not application or priority dates.
}
\examples{
\dontrun{ops_count("pizza", start = 1990, end = 2000)} # search the biblio (front page) across year range
\dontrun{ops_count("pizza", type = "ta")} # search titles and abstracts across all years
\dontrun{ops_count("pizza", type = "ti", start = 19900101, end = 20151231)} # search titles between years
}

