#' geom_bodygram
#'
#' This function creates a custom geom for ggplot.
#'
#' @param data A dataframe. The dataframe with all the coordinates points. Usually the return of `bodygram()`
#' @param mapping aesthetics, the x,y and grouping part of the aesthetics
#' @param position The position parameter. It defaults to "identity"
#' @param stat The stats parameter. Itdefaults to "identity"
#' @param na.rm Whether to remove NAs in the dataset. It deffaults to FALSE.
#' @param show.legend Whether to show leged in the plot. It defaults to NA
#' @param inherit.aes Whether to inherit the aesthetics. It defaults to TRUE
#' @param ... Any possible extra arguments
#'
#' @return A ggproto object
#'
#'
#' @export
#' @examples
#' model_df <- bodygramR::bodygram(data = data, model = "futuristic_male")
#' plot <- ggplot2::ggplot(data = model_df, ggplot2::aes(x, y, group = Id)) +
#'          geom_bodygram(lty = 3, color = "white", ggplot2::aes(fill = Group))
#' plot
#'



geom_bodygram <- function(mapping = NULL, data = NULL, position = "identity",
                          stat = "identity", na.rm = FALSE, show.legend = NA,
                          inherit.aes = TRUE, ...) {

  list(ggplot2::layer(
    geom = geomBodygram, mapping = mapping,  data = data, stat = stat,
    position = position, show.legend = show.legend, inherit.aes = inherit.aes,
    params = list(na.rm = na.rm, ...)
  ), ggplot2::scale_y_reverse(), ggplot2::theme_void())
}
