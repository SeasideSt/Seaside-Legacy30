deprecated
okLink: aBoolean
	self seasideDeprecatedApi: 'SUInPlaceEditor>>okLink:'
		details: 'Use SUInPlaceEditor>>okControl:.'.
	self okControl: (aBoolean 
		ifTrue: [ 'link' ]
		ifFalse: [ false ])