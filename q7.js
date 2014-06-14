(function() {
  var get_next_prime, mark_non_primes, out, sieve;

  sieve = function(n) {
    var current_prime, el, numbers, primes, _i, _results;
    numbers = (function() {
      _results = [];
      for (var _i = 0; 0 <= n ? _i <= n : _i >= n; 0 <= n ? _i++ : _i--){ _results.push(_i); }
      return _results;
    }).apply(this);
    primes = (function() {
      var _j, _len, _results2;
      _results2 = [];
      for (_j = 0, _len = numbers.length; _j < _len; _j++) {
        el = numbers[_j];
        _results2.push([el, true]);
      }
      return _results2;
    })();
    current_prime = 2;
    while (true) {
      mark_non_primes(current_prime, primes);
      current_prime = get_next_prime(current_prime, primes);
      if (!current_prime) break;
    }
    return primes = ((function() {
      var _j, _len, _results2;
      _results2 = [];
      for (_j = 0, _len = primes.length; _j < _len; _j++) {
        el = primes[_j];
        if (el[1]) _results2.push(el[0]);
      }
      return _results2;
    })()).slice(2);
  };

  get_next_prime = function(current_prime, primes) {
    var i, _results;
    i = current_prime + 1;
    _results = [];
    while (true) {
      if (i >= primes.length) return;
      if (primes[i][1]) return primes[i][0];
      _results.push(i++);
    }
    return _results;
  };

  mark_non_primes = function(prime, iterable) {
    var i, _results;
    i = prime;
    _results = [];
    while (true) {
      i = i + prime;
      if (i >= iterable.length) break;
      _results.push(iterable[i][1] = false);
    }
    return _results;
  };

  out = sieve(2000000);

  console.log(out[10000]);

  console.log(out.length);

}).call(this);
