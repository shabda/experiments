(function() {
  var num, sum, _i, _results;

  sum = function(iterable) {
    return iterable.reduce(function(x, y) {
      return x + y;
    });
  };

  if (typeof console !== "undefined" && console !== null) {
    console.log(Math.pow(sum((function() {
      _results = [];
      for (_i = 1; _i <= 100; _i++){ _results.push(_i); }
      return _results;
    }).apply(this)), 2) - sum((function() {
      var _results2;
      _results2 = [];
      for (num = 1; num <= 100; num++) {
        _results2.push(num * num);
      }
      return _results2;
    })()));
  }

}).call(this);
