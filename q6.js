(function() {
  var num, sum, _i, _results;

  sum = function(iterable) {
    var i, summed, _i, _len;
    summed = 0;
    for (_i = 0, _len = iterable.length; _i < _len; _i++) {
      i = iterable[_i];
      summed += i;
    }
    return summed;
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
