private
doesNotUnderstand: aMessage
	^ aMessage selector numArgs = 1
		ifFalse: [ super doesNotUnderstand: aMessage ]
		ifTrue: [ self parameterAt: aMessage selector allButLast put: aMessage arguments first ]