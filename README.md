# palettewidget

This is a simple color palette display widget built with [htmlwidgets] to use
in R HTML applications ([R Markdown] documents, [Shiny] apps).

It is a very simple widget. In fact, this is my first widget and my first R
package as well!!

I wrote this for the following reasons:

1. To learn [htmlwidgets].
2. To learn [React].
3. To learn [how to write R packages] (thanks [hadley]!).
4. To use it in my project app for the [Developing Data Products] class on
   [coursera].

## Installation

To be honest, I don't expect to be posting this on [CRAN], so for now install
it in the `devtools` way:

```r
install.packages("devtools")  # if you don't already have devtools installed
devtools::install_github("sigriston/palettewidget")
```

## Usage

Easy peasy! Just pass a color palette:

```r
library(palettewidget)
palettewidget(c("#ff0000", "#00ff00", "#0000ff"))
```

Or, if you want to see the corresponding HTML/CSS color names:

```r
library(palettewidget)
palettewidget(c("#ff0000", "#00ff00", "#0000ff"),
              displayNames = TRUE)  # should display "red", "green", "blue"
```

## Contributing

1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request :D

## History

**0.0.1**: Initial version.

## Credits

Actual palette widget written by [Thiago Sigrist].

Uses the following dependencies:

- [React] by Facebook
- [TinyColor] by [Brian Grinstead]

## License

MIT.

[htmlwidgets]: http://www.htmlwidgets.org
[R Markdown]: http://rmarkdown.rstudio.com
[Shiny]: http://shiny.rstudio.com
[React]: https://facebook.github.io/react/
[how to write R packages]: http://r-pkgs.had.co.nz
[hadley]: http://had.co.nz
[Developing Data Products]: https://class.coursera.org/devdataprod-034
[coursera]: https://www.coursera.org
[CRAN]: https://cran.r-project.org
[Thiago Sigrist]: https://github.com/sigriston
[TinyColor]: https://bgrins.github.io/TinyColor/
[Brian Grinstead]: http://briangrinstead.com