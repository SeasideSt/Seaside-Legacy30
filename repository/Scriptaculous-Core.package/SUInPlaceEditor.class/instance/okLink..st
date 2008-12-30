deprecated
okLink: aBoolean
	self
		seasideDeprecatedApi: 'SUInPlaceEditor>>#okLink:'
		details: 'Use okControl:.'.
	self okControl: (aBoolean 
		ifTrue: [ 'link' ]
		ifFalse: [ false ])