deprecated
okButton: aBoolean
	self
		seasideDeprecatedApi: 'SUInPlaceEditor>>#okButton:'
		details: 'Use okControl:.'.
	self okControl: (aBoolean 
		ifTrue: [ 'button' ]
		ifFalse: [ false ])