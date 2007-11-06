rendering
renderChildOn: html
	self showHalos
		ifTrue: [ html context debugMode ].
	processTime := processTime isNil
		ifTrue: [ 0 ]
		ifFalse: [ Time millisecondClockValue - processTime ].
	renderTime := Time millisecondsToRun: [
		self withDeprecatedHandlerDo: [
			html render: self root ] ].
	html context clearMode