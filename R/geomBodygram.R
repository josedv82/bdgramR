#' geomBodygram
#'
#' This function creates the ggproto object needed to build a custom geom
#'
#'
#'@return A ggproto object
#'
#'
#'@noRd


geomBdgramr <- ggplot2::ggproto("geomBdgramr", ggplot2::Geom,

                                 required_aes = c("x", "y"),
                                 default_aes = ggplot2::aes(colour = "black", fill = "orange", alpha = 1, linetype = 1),
                                 draw_key = ggplot2::draw_key_polygon,

                                 draw_group = function(data, panel_scales, coord) {
                                   coords <- coord$transform(data, panel_scales)
                                   grid::polygonGrob(
                                     coords$x, coords$y,
                                     gp = grid::gpar(col = coords$colour, group = coords$Id, fill = coords$fill, lty = coords$linetype)
                                   )
                                 }
                               )
