
compute_icg <- function(data = df, wave = NULL, segment_by = NULL){
 segment_by <-dplyr::enquo(segment_by)

  if (is.null(wave)){

    df %>%
      dplyr::mutate(dplyr::across(c(icg, eval_gob_rec, benef_gob_rec, adm_gp_rec, cor_gob_rec, resol_prob_rec),
                           .fns = list(weighted = ~(.*ponderacion_utdt)),
                           .names = "{col}_weighted")) %>%
      dplyr::group_by(ola, !!segment_by) %>%
      dplyr::summarise(dplyr::across(c(icg_weighted, eval_gob_rec_weighted, benef_gob_rec_weighted, adm_gp_rec_weighted, cor_gob_rec_weighted, resol_prob_rec_weighted),
                              .fns = list(weighted = ~(round(sum(.)/sum(ponderacion_utdt), digits = 2))))) #promedio de ICG

  }
  else {
    df %>%
      dplyr::filter(ola %in% wave) %>%
      dplyr::mutate(dplyr::across(c(icg, eval_gob_rec, benef_gob_rec, adm_gp_rec, cor_gob_rec, resol_prob_rec),
                                  .fns = list(weighted = ~(.*ponderacion_utdt)),
                                  .names = "{col}_weighted")) %>%
      dplyr::group_by(ola, !!segment_by) %>%
      dplyr::summarise(dplyr::across(c(icg_weighted, eval_gob_rec_weighted, benef_gob_rec_weighted, adm_gp_rec_weighted, cor_gob_rec_weighted, resol_prob_rec_weighted),
                                     .fns = list(weighted = ~(round(sum(.)/sum(ponderacion_utdt), digits = 2))))) #promedio de ICG
  }
}

