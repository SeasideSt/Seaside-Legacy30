private-rendering
renderHours
	| brush |
	brush := canvas textInput
		id: self id;
		value: (WANumberPrinter new
			padding: $0; digits: 2;
			print: hours).
	self addHoursCallbackToBrush: brush.
	brush
		attributeAt: 'size' put: 2;
		attributeAt: 'maxlength' put: 2