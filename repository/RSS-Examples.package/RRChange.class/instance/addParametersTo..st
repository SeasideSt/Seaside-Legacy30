api
addParametersTo: anUrl
	self hasChangedClass ifFalse: [^self].
	anUrl addParameter: 'class' value: self changedClassName.
	self hasChangedSelector ifTrue: [
		anUrl addParameter: 'method' value: self changedSelector ].
	self isMeta ifTrue: [
		anUrl addParameter: 'meta']
