(function() {
  'use strict';
  angular.module('lineBreaks', []);

  angular.module('lineBreaks').directive('lineBreaks', function() {
    return {
      require: 'ngModel',
      link: function(scope, element, attr, ctrl) {
        return ctrl.$render = function() {
          return element.html(ctrl.$modelValue.replace(/\n$/, '<br/>&nbsp;').replace(/\n/g, '<br/>'));
        };
      }
    };
  });

}).call(this);
