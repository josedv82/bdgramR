#' Glimpse function to quickly plot all available diagrams
#'
#' This function provides a visual glimpse of all the available diagrams.
#'
#' @param data A dataframe. The dataframe with all the coordinates points. Must be equal to `data`.
#' @param models A vector. If not set it will return all the available diagrams in the dataset provided with the package.
#' @param color A color. The color of the polygons.
#' @param fill A color. The fill of the polygons.
#'
#' @return A ggplot object with the selected figures.
#'
#'
#' @export
#' @examples
#' glimpse_models(data = data)
#'

glimpse_models <- function(data = data,
                          models = c("futuristic_male",
                                     "original_male",
                                     "original_female",
                                     "thermohuman_male",
                                     "thermohuman_female",
                                     "athletesr",
                                     "basic_female",
                                     "basic_male",
                                     "multi_view_male"),
                          color = "dodgerblue",
                          fill = "lightblue"){

  result <- tryCatch({

    data <- data %>% dplyr::filter(Model %in% models)

    plot <- ggplot2::ggplot(data = data, ggplot2::aes(x = x, y = y, group = Id)) +
      ggplot2::geom_polygon(color = color, fill = fill) +
      ggplot2::scale_y_reverse(expand=c(0.01,0.01)) +
      ggplot2::facet_wrap(~Model, scales = "free") +
      ggplot2::ggtitle("Available Body Diagrams \n") +
      ggplot2::theme_void() +
      ggplot2::theme(legend.position = "none",
                     panel.background = ggplot2::element_rect(fill = "lightgray", color = "transparent"),
                     strip.background = ggplot2::element_rect(fill = "black"),
                     strip.text = ggplot2::element_text(color = "white", size = 12))

    plot

  }, error = function(cond){

    message("data must be equal to `data`")

    return(NA)

  })

  return(result)

}
