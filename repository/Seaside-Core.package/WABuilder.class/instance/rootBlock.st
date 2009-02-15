accessing
rootBlock
	rootBlock isNil ifTrue: [
		rootBlock := [ :root | ] ].
	^rootBlock