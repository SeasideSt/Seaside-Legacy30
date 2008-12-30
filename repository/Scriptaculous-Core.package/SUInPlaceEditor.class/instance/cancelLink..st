deprecated
cancelLink: aBoolean
	self
		seasideDeprecatedApi: 'SUInPlaceEditor>>#cancelLink:'
		details: 'Use #cancelControl:.'.
	self cancelControl: (aBoolean 
		ifTrue: [ 'link' ]
		ifFalse: [ false ])