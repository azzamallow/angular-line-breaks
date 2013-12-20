'use strict'

angular.module 'lineBreaks', []

angular.module('lineBreaks')
  .directive 'lineBreaks', ->
    require: 'ngModel'
    link: (scope, element, attr, ctrl) ->
      ctrl.$render = -> 
        element.html ctrl.$modelValue
          .replace(/\n$/, '<br/>&nbsp;')
          .replace(/\n/g, '<br/>')