(function() {
  var current, is_div_all, is_prime, max, min, mult, num, primes;

  is_prime = function(num) {
    var i;
    i = 2;
    while (true) {
      if (i > Math.ceil(Math.sqrt(num))) break;
      if (num % i === 0) return false;
      i += 1;
    }
    return true;
  };

  primes = (function() {
    var _results;
    _results = [];
    for (num = 1; num <= 20; num++) {
      if (is_prime(num)) _results.push(num);
    }
    return _results;
  })();

  mult = function(number) {
    return number.reduce(function(x, y) {
      return x * y;
    });
  };

  is_div_all = function(number) {
    var i;
    for (i = 1; i <= 20; i++) {
      if (!(number % i === 0)) return false;
    }
    return true;
  };

  min = mult(primes);

  max = mult([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]);

  current = min;

  while (true) {
    if (current >= max) break;
    if (is_div_all(current)) break;
    current += min;
  }

  if (typeof console !== "undefined" && console !== null) console.log(current);

}).call(this);
