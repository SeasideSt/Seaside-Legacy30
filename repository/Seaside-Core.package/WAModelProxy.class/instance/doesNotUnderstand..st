forwarding
doesNotUnderstand: aMessage
	^ aMessage selector isUnary
		ifTrue: [self performRead: aMessage selector]
		ifFalse: [
			(aMessage selector isKeyword and: [aMessage arguments size = 1])
				ifTrue: [self performWrite: aMessage selector allButLast with: aMessage argument]
				ifFalse: [super doesNotUnderstand: aMessage]]