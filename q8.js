(function() {
  var a, b, c, combos, get_pythegerous, _ref;

  combos = [];

  for (a = 1; a < 1000; a++) {
    for (b = 1, _ref = 1000 - a; 1 <= _ref ? b < _ref : b > _ref; 1 <= _ref ? b++ : b--) {
      c = 1000 - (a + b);
      combos.push([a, b, c]);
    }
  }

  get_pythegerous = function(iterable) {
    var el, largest, x, y, _i, _len, _ref2, _ref3, _ref4;
    for (_i = 0, _len = iterable.length; _i < _len; _i++) {
      el = iterable[_i];
      a = el[0], b = el[1], c = el[2];
      if (a > b && a > c) {
        _ref2 = [a, b, c], largest = _ref2[0], x = _ref2[1], y = _ref2[2];
      } else if (b > c) {
        _ref3 = [b, a, c], largest = _ref3[0], x = _ref3[1], y = _ref3[2];
      } else {
        _ref4 = [c, a, b], largest = _ref4[0], x = _ref4[1], y = _ref4[2];
      }
      if (largest * largest === x * x + y * y) return [largest, x, y];
    }
  };

  console.log(get_pythegerous(combos));

}).call(this);
