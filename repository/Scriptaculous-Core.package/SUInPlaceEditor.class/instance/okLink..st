deprecated
okLink: aBoolean
	self deprecatedApi.
	self okControl: (aBoolean 
		ifTrue: [ 'link' ]
		ifFalse: [ false ])