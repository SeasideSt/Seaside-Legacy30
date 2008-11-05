instance-creation
named: aString
	^ self configurations
		detect: [ :each | each name = aString ]
		ifNone: [ instances add: (self basicNew initialize; setName: aString; yourself) ]