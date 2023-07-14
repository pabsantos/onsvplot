scale_discrete_obs <- function() {
  palette <- c("#00496d", "#f7951d", "#d51f29", "#1fa149", "#ec0d6b", "#f05f22")
  ggplot2::scale_discrete_manual(
    aesthetics = c("color", "fill"),
    values = palette
  )
}
