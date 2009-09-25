delegation
show: aComponent
	^parent isNil
		ifFalse: [parent show: aComponent]
		ifTrue: [super show: aComponent ].
