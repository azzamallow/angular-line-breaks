angular-line-breaks
===================

Directive to replace line breaks with br's when rendering in an element. This is helpful when trying to render ng-model from a textarea within another element

install
-------

```
bower install angular-line-breaks
```

usage
-----

Make sure you include the module in your application config

```
angular.module('myApp', [
  'lineBreaks',
  ...
]);
```

Set up your model
```
$scope.modelValue = "This is some text\nwith\n line\nbreaks.\n\nCool huh?";
```

Use the directive
```
<p ng-model="modelValue" line-breaks></p>
```

Text with br's is rendered
```
<p ng-model="modelValue" line-breaks>This is some text<br>with<br> line<br>breaks.<br><br>Cool huh?<br></p>
```
