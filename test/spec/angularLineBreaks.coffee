'use strict'

describe 'Directive: lineBreaks', ->

  beforeEach module 'lineBreaks'

  scope = {}

  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()

  it 'should make hidden element visible', inject ($compile) ->
    element = angular.element '<p ng-model="myModel" line-breaks></p>'
    element = $compile(element) scope
    scope.myModel = "This is some text\nwith\n line\nbreaks.\n\nCool huh?\n"
    scope.$digest()
    expect(element.html()).toBe 'This is some text<br>with<br> line<br>breaks.<br><br>Cool huh?<br>&nbsp;'
