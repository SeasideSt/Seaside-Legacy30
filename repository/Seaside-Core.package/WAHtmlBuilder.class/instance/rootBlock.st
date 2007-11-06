accessing
rootBlock
	rootBlock isNil ifTrue: [
		rootBlock := [ :html | ] ].
	^rootBlock