accessing-headers
headers
	headers isNil ifTrue: [
		headers := OrderedCollection new ].
	^headers