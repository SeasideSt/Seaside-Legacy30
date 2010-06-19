accessing
nextPut: aCharacter 
	| value encoded |
	value := aCharacter greaseInteger.
	value < table size 
		ifFalse: [
			self class 
				encode: aCharacter
				on: stream ]
		ifTrue: [
			encoded := table at: value + 1.
			encoded isString 
				ifTrue: [ stream nextPutAll: encoded ]
				ifFalse: [ stream nextPut: encoded ] ]