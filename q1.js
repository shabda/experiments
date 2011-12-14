(function() {
  var num;

  if (typeof console !== "undefined" && console !== null) {
    console.log(((function() {
      var _results;
      _results = [];
      for (num = 1; num <= 1000; num++) {
        if (num % 3 === 0 || num % 5 === 0) _results.push(num);
      }
      return _results;
    })()).reduce(function(x, y) {
      return x + y;
    }));
  }

}).call(this);
