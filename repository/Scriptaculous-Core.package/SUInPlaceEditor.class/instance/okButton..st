deprecated
okButton: aBoolean
	self deprecatedApi.
	self okControl: (aBoolean 
		ifTrue: [ 'button' ]
		ifFalse: [ false ])