'use strict';

var Palette = React.createClass({
  displayName: 'Palette',
  render: function render() {
    var _this = this;

    var paletteNodes = this.props.palette.map(function (color, idx) {
      var tc = tinycolor(color);
      var displayColor = _this.props.displayNames && tc.toName() ? tc.toName() : tc.toHexString();
      var style = {
        color: tc.isLight() ? 'black' : 'white',
        backgroundColor: displayColor
      };
      return React.createElement(
        'li',
        { key: idx, style: style },
        displayColor
        );
    });
    return React.createElement(
      'div',
      { className: 'palette' },
      React.createElement(
        'ul',
        null,
        paletteNodes
        )
        );
  }
});