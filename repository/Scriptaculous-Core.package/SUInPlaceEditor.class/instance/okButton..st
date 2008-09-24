deprecated
okButton: aBoolean
	self seasideDeprecatedApi: 'SUInPlaceEditor>>okButton:'
		details: 'Use SUInPlaceEditor>>okControl:.'.
	self okControl: (aBoolean 
		ifTrue: [ 'button' ]
		ifFalse: [ false ])