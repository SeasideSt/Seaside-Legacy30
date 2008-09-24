deprecated
cancelLink: aBoolean
	self seasideDeprecatedApi: 'SUInPlaceEditor>>cancelLink:'
		details: 'Use SUInPlaceEditor>>cancelControl:.'.
	self cancelControl: (aBoolean 
		ifTrue: [ 'link' ]
		ifFalse: [ false ])