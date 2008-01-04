deprecated
cancelButton: aBoolean
	self deprecatedApi.
	self cancelControl: (aBoolean 
		ifTrue: [ 'button' ]
		ifFalse: [ false ])