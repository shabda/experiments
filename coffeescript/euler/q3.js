(function() {
  var factors, is_prime, sqrt;

  sqrt = function(num) {
    return Math.pow(num, 0.5);
  };

  is_prime = function(num) {
    var i;
    if (num === 2) return true;
    i = 2;
    while (true) {
      if (i > Math.ceil(sqrt(num))) break;
      if (num % i === 0) return false;
      i += 1;
    }
    return true;
  };

  factors = function(number) {
    var num, _results;
    _results = [];
    for (num = 1; 1 <= number ? num <= number : num >= number; 1 <= number ? num++ : num--) {
      if (number % num === 0 && is_prime(num)) _results.push(num);
    }
    return _results;
  };

  if (typeof console !== "undefined" && console !== null) {
    console.log(factors(1001));
  }

}).call(this);
