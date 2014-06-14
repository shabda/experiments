(function() {
  var all, candidates, el, el1, el2, is_palindrome, _i, _j, _k, _len, _len2, _results;

  String.prototype.reverse = function() {
    return this.split("").reverse().join("");
  };

  is_palindrome = function(set) {
    var a, b, num;
    a = set[0], b = set[1], num = set[2];
    num = '' + num;
    return num === num.reverse();
  };

  candidates = (function() {
    _results = [];
    for (_i = 999; _i >= 100; _i--){ _results.push(_i); }
    return _results;
  }).apply(this);

  all = [];

  for (_j = 0, _len = candidates.length; _j < _len; _j++) {
    el1 = candidates[_j];
    for (_k = 0, _len2 = candidates.length; _k < _len2; _k++) {
      el2 = candidates[_k];
      all.push([el1, el2]);
    }
  }

  all = (function() {
    var _l, _len3, _results2;
    _results2 = [];
    for (_l = 0, _len3 = all.length; _l < _len3; _l++) {
      el = all[_l];
      _results2.push([el[0], el[1], el[0] * el[1]]);
    }
    return _results2;
  })();

  all = all.filter(is_palindrome).sort(function(a, b) {
    return a[2] - b[2];
  });

  console.log(all[all.length - 1]);

}).call(this);
