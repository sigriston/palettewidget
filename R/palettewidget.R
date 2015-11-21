#' Color Palette Widget
#'
#' Displays a color palette and their HTML/CSS hex color codes or names.
#'
#' @param palette The color palette to be displayed.
#'
#' @param displayNames Use `TRUE` to attempt to display HTML/CSS color names
#'                     for those colors that have them.
#'
#' @return The rendered color palette widget.
#'
#' @examples
#' palettewidget(c("#ff0000", "#00ff00", "#0000ff"))
#' palettewidget(c("#ff0000", "#00ff00", "#0000ff"),
#'               displayNames = TRUE)  # should display "red", "lime", "blue"
#'
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