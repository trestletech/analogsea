% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/droplets.R
\name{droplets}
\alias{droplets}
\title{List all available droplets.}
\usage{
droplets(..., page = 1, per_page = 25, tag = NULL)
}
\arguments{
\item{...}{Additional arguments passed down to low-level API function
(\code{do_*})}

\item{page}{Page to return. Default: 1.}

\item{per_page}{Number of results per page. Default: 25.}

\item{tag}{(character) Name of a tag. optional}
}
\description{
List all available droplets.
}
\examples{
\dontrun{
droplets()
droplets(per_page = 2)
droplets(per_page = 2, page = 2)

# list droplets by tag
tag_create(name = "stuffthings")
d <- droplet_create()
tag_resource(name = "stuffthings", resource_id = d$id,
  resource_type = "droplet")
droplets(tag = "stuffthings")
}
}

