#' Muestra libro de códigos
#'   (\emph{(Show codebook)})
#'@description
#'
#'Función que ...
#'
#'@return Devuelve un objeto "tbl_df" "tbl" "data.frame" con el libro de códigos del ICG o una "sjTable" con el nombre de las variables, las etiquetas, los valores y las etiquetas de los valores
#'  (\emph{object "tbl_df" "tbl" "data.frame" with the ICG codebook or a "sjTable" with the variables' names, labels, values and value labels})
#'
#'@details Función para obtener la tabla con el libro de códigos
#'  (\emph{Function to show the codebook table})
#'
#' @param viewer para elegir si la tabla se ve en el visor o se imprime el tibble para ser utilizado
#'  (\emph{choose to view the table in the viewer or print the tibble to be used}).
#'
#'@export


show_codebook <- function(viewer = F){
  if(viewer == F){

    icg_codebook

    }

  else{

    sjPlot::view_df(get_icg_raw())

  }
}
