deprecated
cancelButton: aBoolean
	self
		seasideDeprecatedApi: 'SUInPlaceEditor>>#cancelButton:'
		details: 'Use cancelControl:.'.
	self cancelControl: (aBoolean 
		ifTrue: [ 'button' ]
		ifFalse: [ false ])