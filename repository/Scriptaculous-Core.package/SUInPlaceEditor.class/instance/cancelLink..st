deprecated
cancelLink: aBoolean
	self deprecatedApi.
	self cancelControl: (aBoolean 
		ifTrue: [ 'link' ]
		ifFalse: [ false ])