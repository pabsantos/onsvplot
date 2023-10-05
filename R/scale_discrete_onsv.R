#' Apply ONSV color scale to ggplot object
#'
#' `scale_discrete_onsv()` is used to apply the ONSV color scale to a
#' ggplot graphics
#'
#' @param ... Arguments passed on to \link[ggplot2]{scale_discrete_manual} or
#' to \link[ggplot2]{discrete_scale}, on a lower level.
#'
#' @return A custom scale object for ggplot objects
#' @export
#'
#' @examples
#' library(ggplot2)
#'
#' ggplot(data = iris, aes(x = Sepal.Width, y = Sepal.Length, color = Species)) +
#'   geom_point() +
#'   theme_onsv() +
#'   scale_discrete_onsv()
scale_discrete_onsv <- function(...) {
  palette <- c(
    "#00496d", "#f7951d", "#d51f29", "#1fa149", "#ec0d6b", "#f05f22",
    "#99B6C5", "#FCD5A5", "#EEA5A9", "#A5D9B6", "#F79EC4", "#F9BFA7"
  )
  ggplot2::scale_discrete_manual(
    aesthetics = c("color", "fill"),
    values = palette,
    ...
  )
}
