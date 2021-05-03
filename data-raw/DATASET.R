## code to prepare `DATASET` dataset goes here

icg_codebook <- tibble::tibble(
  variable_name = c("eval_gob_rec",
                    "benef_gob_rec",
                    "adm_gp_rec",
                    "cor_gob_rec",
                    "resol_prob_rec",
                    "zona",
                    "sexo",
                    "edad",
                    "edu"),
  description = c("Evaluación del gobierno",
                  "Beneficio a pocos o a la mayoría",
                  "Administración del gasto público",
                  "Corrupción del gobierno",
                  "Solución de problemas del país",
                  "Zona en la que se realizó la encuesta",
                  "Sexo",
                  "Rango de edad",
                  "Máximo nivel educativo alcanzado en 3 niveles"),
  tidy_variable_name = c("Evaluación del gobierno",
                         "Beneficios del gobierno",
                         "Administración del gasto público",
                         "Corrupción del gobierno",
                         "Resolución de problemas",
                         "Zona",
                         "Sexo",
                         "Edad",
                         "Máximo Nivel Educativo")

)


usethis::use_data(icg_codebook, overwrite = TRUE, internal = T)
