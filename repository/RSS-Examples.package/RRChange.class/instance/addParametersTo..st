api
addParametersTo: aUrl
	self hasChangedClass ifFalse: [^self].
	aUrl addParameter: 'class' value: self changedClassName.
	self hasChangedSelector ifTrue: [
		aUrl addParameter: 'method' value: self changedSelector ].
	self isMeta ifTrue: [
		aUrl addParameter: 'meta']
