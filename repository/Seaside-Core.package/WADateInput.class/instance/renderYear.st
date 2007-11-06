private rendering
renderYear
	| brush |
	brush := (canvas textInput)
		id: (self id isNil ifTrue: [nil] ifFalse: [self id , '-year']);
		value: year;
		yourself.
	self addYearCallbackToBrush: brush.
	brush
		attributeAt: 'size' put: 4;
		attributeAt: 'maxlength' put: 4