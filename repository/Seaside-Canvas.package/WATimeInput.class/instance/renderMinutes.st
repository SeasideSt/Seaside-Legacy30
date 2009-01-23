private-rendering
renderMinutes
	| brush |
	brush := canvas textInput
				id: (self id isNil
						ifFalse: [self id , '-mins']);
				 value: minutes asTwoCharacterString;
				 yourself.
	self addMinutesCallbackToBrush: brush.
	brush attributeAt: 'size' put: 2;
		 attributeAt: 'maxlength' put: 2