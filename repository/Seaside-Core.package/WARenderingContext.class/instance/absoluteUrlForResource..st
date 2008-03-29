accessing
absoluteUrlForResource: aString
	| url |
	(aString isNil or: [ aString includesSubString: '://' ])
		ifTrue: [ ^ aString ].
	url := WACurrentContext application resourceBaseUrl.
	url ifNil: [ ^ aString ].
	^ url , aString