% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/show_waves.R
\name{show_waves}
\alias{show_waves}
\title{Computa el ICG (\emph{Compute ICG})}
\usage{
show_waves(data = NULL, viewer = FALSE)
}
\arguments{
\item{data}{un tibble guardado como objeto en el enviroment luego de consultar \code{\link{get_icg_raw}}
(\emph{A tibble saved as an object in the enviroment after querying \code{\link{get_icg_raw}}}).}

\item{viewer}{para elegir si la tabla se ve en el visor o se imprime el tibble para ser utilizado
(\emph{choose to view the table in the viewer or print the tibble to be used}).}
}
\value{
devuelve un tibble con \code{class "tbl_df","tbl", "data.frame"} con el número de ola y el mes y año correspondiente
(\emph{returns a tibble with \code{class "tbl_df", "tbl", "data.frame"} with the wave number and the corresponding month and year}).
}
\description{
Función para mostrar las olas, el mes y el año
(\emph{Function to compute ICG results})
}
\seealso{
\code{\link{get_icg_raw}}
}
