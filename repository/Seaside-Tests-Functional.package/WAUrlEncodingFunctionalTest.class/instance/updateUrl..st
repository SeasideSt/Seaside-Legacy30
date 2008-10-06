updating
updateUrl: aUrl
	super updateUrl: aUrl.
	input isEmptyOrNil ifTrue: [ ^ self ].
	aUrl addToPath: input.
	aUrl addParameter: 'input' value: input