#' Apply ONSV theme to ggplot object
#'
#' `theme_onsv()` is used to apply the ONSV theme to a ggplot graphics.
#'
#' @param base_size A number to define font base size,
#' passed to \link[ggplot2]{theme_minimal}
#' @param ... Arguments passed on to \link[ggplot2]{theme}
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
theme_onsv <- function(base_size = 11, ...) {
  if (.Platform$OS.type == "windows") {
    font <- "sans"
  } else {
    font <- "Helvetica"
  }

  ggplot2::theme_minimal(
    base_size = base_size,
    base_family = font
  ) +
  ggplot2::theme(
    plot.title = ggplot2::element_text(color = "grey20"),
    plot.subtitle = ggplot2::element_text(color = "grey20"),
    plot.caption = ggplot2::element_text(color = "grey20"),
    plot.title.position = "plot",
    plot.caption.position = "plot",
    legend.position = "top",
    legend.justification = "left",
    legend.box.just = "left",
    legend.background = ggplot2::element_blank(),
    legend.title = ggplot2::element_blank(),
    legend.key = ggplot2::element_blank(),
    legend.text = ggplot2::element_text(color = "grey20"),
    legend.margin = ggplot2::margin(t = 0, r = 0, b = 0, l = -20),
    axis.title = ggplot2::element_text(color = "grey20"),
    panel.background = ggplot2::element_rect(color = "white", fill = "white"),
    strip.background = ggplot2::element_rect(fill = "white"),
    legend.key.size = unit(0.4, "cm"),
    ...
  )
}
