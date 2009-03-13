instance creation
named: aString ifNew: anUnaryBlock
	"Answer a shared configuration with the name aString. If no configuration with that name exists, a new one is created and passed into anUnaryBlock."
	
	^ self configurations
		detect: [ :each | each name = aString ]
		ifNone: [
			| config |
			config := self basicNew
				initializeWithName: aString;
				yourself.
			anUnaryBlock value: config.
			instances add: config.
			config ]