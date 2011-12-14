(function() {
  var a, b, even_fibs, fibs, num, sum, _ref, _ref2;

  _ref = fibs = [1, 2], a = _ref[0], b = _ref[1];

  while (true) {
    _ref2 = [b, a + b], a = _ref2[0], b = _ref2[1];
    if (b > 4000000) break;
    fibs.push(b);
  }

  even_fibs = (function() {
    var _i, _len, _results;
    _results = [];
    for (_i = 0, _len = fibs.length; _i < _len; _i++) {
      num = fibs[_i];
      if (num % 2 === 0) _results.push(num);
    }
    return _results;
  })();

  sum = even_fibs.reduce(function(x, y) {
    return x + y;
  });

  if (typeof console !== "undefined" && console !== null) console.log(sum);

}).call(this);
