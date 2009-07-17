converting-request
requestUrlFor: aNativeRequest
	| url |
	url := ((WAUrl absolute: aNativeRequest uri printString)
		decodedWith: self codec)
		withoutParameters.
	aNativeRequest isEncrypted
		ifTrue: [ url scheme: 'https' ].
	^ url