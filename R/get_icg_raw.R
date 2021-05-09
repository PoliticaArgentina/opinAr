#' Descarga base de microdatos del ICG
#'   (\emph{(Universidad Torcuato Di Tella)})
#'@description
#'
#'Función que ...
#'
#'@return Devuelve un objeto "tbl_df" "tbl" "data.frame" con los microdatos del ICG....
#'
#'@details Respecto el origen de los datos se puede consultar la documentación en
#' \href{https://www.utdt.edu/ver_contenido.php?id_contenido=1351&id_item_menu=2970}{\code{https://www.utdt.edu/ver_contenido.php?id_contenido=1351&id_item_menu=2970}}.
#'
#'@export


get_icg_raw <- function(){


  # download message one per session hack
  if(base::getOption('descarga-icg', TRUE)){


    message(glue::glue("Indice de Confianza en el Gobierno. Escuela de Gobierno. Universidad Torcuato Di Tella.
  Base de datos descargada el {format(Sys.Date(), '%d %B de %Y')}. Fuente: https://www.utdt.edu/icg. Backup: https://github.com/PoliticaArgentina/data_warehouse"))

    options('descarga-icg' = FALSE)

    }


  ###### DATA SOURCE INFORMATION ########

  # DATA URL
  url = "https://www.utdt.edu/ver_contenido.php?id_contenido=17876&id_item_menu=28756"

  # HTML ELEMENT PATH
  xpath = "/html/body/main/section[2]/div/div/div/div[2]/div/span[2]/strong/a"

   ########################################

  # DOWNLOADING INSTRUTCTIONS

  # Set default value for try()

  default <- NULL

  df <- base::suppressWarnings(base::try(default <- rvest::read_html(url) %>%
                                           rvest::html_elements(xpath = xpath) %>%
                                           rvest::html_attr('href') %>%
                                           haven:: read_dta() %>%
                                           janitor::clean_names(),
                                         silent = TRUE))


  if(is.null(default)){

    df <- base::suppressWarnings(base::try(default <- haven::read_dta(file = "https://github.com/politicaargentina/data_warehouse/raw/master/opinAr/data_raw/icg.dta") %>%
      janitor::clean_names(),
    silent = TRUE))

   if(is.null(default)){

      df <- base::message("Fail to download data. Source is not available // La fuente de datos no esta disponible")

       } else {

      df <- df

      }

    } else {

      df
  }
}
