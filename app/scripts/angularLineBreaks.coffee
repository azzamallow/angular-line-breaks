'use strict'

angular.module 'lineBreaks', []

angular.module('lineBreaks')
  .directive 'lineBreaks', ->
    require: 'ngModel'
    link: (scope, element, attr, ctrl) ->
      ctrl.$render = -> 
        return unless ctrl.$modelValue?
        
        element.html ctrl.$modelValue
          .replace(/\n$/, '<br/>&nbsp;')
          .replace(/\n/g, '<br/>')