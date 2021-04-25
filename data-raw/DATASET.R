## code to prepare `DATASET` dataset goes here

icg_codebook <- tibble::tibble(
  variable_name = c("eval_gob_rec", "benef_gob_rec", "adm_gp_rec", "cor_gob_rec", "resol_prob_rec"),
  variable_description = c("¿Cómo evalúa usted al gobierno nacional en términos de muy bien, bien, regular, mal, o muy mal? 1 Muy bien 2 Bien 3 Regular 4 Mal 5 Muy mal 6 Ns nc",
                           "¿Usted diría que en general, el gobierno nacional actúa pensando en el beneficio de algunos pocos sectores o pensando en el beneficio de la mayoría de la gente? 1 Sectores 2 Gente 3 Otro 4 Ns nc",
                           "¿Usted diría que en general, el gobierno nacional administra el gasto público con eficiencia, con cierta eficiencia, con un poco de ineficiencia o muy ineficientemente? 1 Eficiencia 2 Cierta eficiencia 3 Un poco de ineficiencia 4 Muy ineficientemente 5 Ns nc",
                           "¿Usted diría que de las personas que forman el gobierno nacional la mayoría son corruptas, que unos pocos son corruptos, o que casi ninguno es corrupto? 1 La mayoría son corruptas 2 Unos pocos son corruptos 3 Casi ninguno es corrupto 4 Ns nc",
                           "¿Cuál de las siguientes frases se acerca más a lo que usted piensa?: 1 Este gobierno está resolviendo los problemas del país 2 Este gobierno sabe cómo resolver los problemas del país pero necesita tiempo 3 Este gobierno no sabe cómo resolver los problemas del país 4 Ns nc"),
  tidy_variable_name = c("Evaluación del gobierno", "Beneficios del gobierno", "Administración del gasto público", "Corrupción del gobierno", "Resolución de problemas")

)


usethis::use_data(icg_codebook, overwrite = TRUE, internal = T)
