(function() {
  var num, numbers, sum, _i, _len;

  numbers = (function() {
    var _results;
    _results = [];
    for (num = 1; num <= 1000; num++) {
      if (num % 3 === 0 || num % 5 === 0) _results.push(num);
    }
    return _results;
  })();

  sum = 0;

  for (_i = 0, _len = numbers.length; _i < _len; _i++) {
    num = numbers[_i];
    sum += num;
  }

  if (typeof console !== "undefined" && console !== null) console.log(sum);

}).call(this);
