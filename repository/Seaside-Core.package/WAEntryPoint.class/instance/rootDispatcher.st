accessing
rootDispatcher
	self isRoot ifTrue: [^self].
	self parent isNil ifTrue: [^nil].
	^self parent rootDispatcher