HTMLWidgets.widget({

  name: "palettewidget",

  type: "output",

  renderValue: function(el, x, instance) {

    ReactDOM.render(
      React.createElement(Palette, {
        palette: x.palette,
        displayNames: x.displayNames
      }), el);
  }
});