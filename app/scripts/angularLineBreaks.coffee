'use strict'

angular.module 'angularLineBreaks', []

angular.module('angularLineBreaks')
  .directive 'angularLineBreaks', ->
    template: '<div></div>'
    restrict: 'E'
    link: (scope, element, attrs) ->
      element.text 'this is the angularLineBreaks directive'