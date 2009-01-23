private-rendering
renderHours
	| brush |
	brush := canvas textInput
		id: self id;
		value: hours asTwoCharacterString;
		yourself.
	self addHoursCallbackToBrush: brush.
	brush
		attributeAt: 'size' put: 2;
		attributeAt: 'maxlength' put: 2