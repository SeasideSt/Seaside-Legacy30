accessing
selected
	^ selected ifNil: [ selected := elements isEmpty ifFalse: [ elements first value ] ]