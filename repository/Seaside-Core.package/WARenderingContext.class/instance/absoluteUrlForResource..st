accessing
absoluteUrlForResource: aString
	| url |
	(aString isNil or: [ aString beginsWith: 'http' ])
		ifTrue: [ ^ aString ].
	url := self session application resourceBaseUrl.
	url ifNil: [ ^ aString ].
	^ url , aString