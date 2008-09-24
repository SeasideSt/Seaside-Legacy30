deprecated
cancelButton: aBoolean
	self seasideDeprecatedApi: 'SUInPlaceEditor>>cancelButton:'
		details: 'Use SUInPlaceEditor>>cancelControl:.'.
	self cancelControl: (aBoolean 
		ifTrue: [ 'button' ]
		ifFalse: [ false ])