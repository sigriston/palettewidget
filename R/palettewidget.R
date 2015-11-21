#' @import htmlwidgets
#' @export
palettewidget <- function(palette, displayNames = FALSE) {

  # create the widget
  htmlwidgets::createWidget("palettewidget", list(
    palette = palette,
    displayNames = displayNames
  ))
}

#' @export
palettewidgetOutput <- function(outputId, width = "auto", height = "auto") {
  shinyWidgetOutput(outputId,
                    "palettewidget",
                    width,
                    height,
                    package = "palettewidget")
}
#' @export
renderPalettewidget <- function(expr, env = parent.frame(), quoted = FALSE) {
  if (!quoted) { expr <- substitute(expr) } # force quoted
  shinyRenderWidget(expr, palettewidgetOutput, env, quoted = TRUE)
}