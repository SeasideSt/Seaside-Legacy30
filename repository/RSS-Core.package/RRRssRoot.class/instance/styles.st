accessing
styles
	styles isNil ifTrue: [
		styles := OrderedCollection new ].
	^styles