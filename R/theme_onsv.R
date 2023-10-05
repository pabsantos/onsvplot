#' Apply ONSV theme to ggplot object
#'
#' `theme_onsv()` is used to apply the ONSV theme to a ggplot graphics.
#'
#' @param basesize A number to define font base size
#'
#' @return A custom `theme()` object.
#' @export
#'
#' @examples
#' library(ggplot2)
#'
#' ggplot(data = iris, aes(x = Sepal.Width, y = Sepal.Length)) +
#'   geom_point() +
#'   theme_onsv()
theme_onsv <- function(basesize = 10) {
  if (.Platform$OS.type == "windows") {
    font <- "sans"
  } else {
    font <- "Helvetica"
  }

  ggplot2::theme(
    plot.title = ggplot2::element_text(
      family = font,
      size = basesize + 4,
      face = "bold",
      color = "grey10",
      margin = ggplot2::margin(t = 0, r = 0, b = 5, l = 0),
    ),
    plot.subtitle = ggplot2::element_text(
      family = font,
      size = basesize + 2,
      margin = ggplot2::margin(t = 5, r = 0, b = 5, l = 0),
      color = "grey20"
    ),
    plot.title.position = "plot",
    plot.caption.position = "plot",
    legend.position = "top",
    legend.justification = "left",
    legend.box.just = "left",
    legend.background = ggplot2::element_blank(),
    legend.title = ggplot2::element_blank(),
    legend.key = ggplot2::element_blank(),
    legend.key.size = ggplot2::unit(0.3, "cm"),
    legend.text = ggplot2::element_text(
      family = font,
      size = basesize - 1,
      color = "grey20"
    ),
    legend.margin = ggplot2::margin(t = 0, r = 0, b = 0, l = -10),
    axis.title = ggplot2::element_text(
      family = font,
      size = basesize - 1,
      color = "grey10"
    ),
    axis.ticks = ggplot2::element_blank(),
    axis.text = ggplot2::element_text(
      family = font,
      size = basesize - 2,
      color = "grey30"
    ),
    panel.grid.minor = ggplot2::element_blank(),
    panel.grid.major.y = ggplot2::element_line(
      color = "#cbcbcb",
      linewidth = 0.4
    ),
    panel.grid.major.x = ggplot2::element_line(
      color = "#cbcbcb",
      linewidth = 0.4
    ),
    panel.background = ggplot2::element_rect(color = "white", fill = "white"),
    strip.background = ggplot2::element_rect(fill = "white"),
    strip.text = ggplot2::element_text(size = basesize + 2, hjust = 0)
  )
}
