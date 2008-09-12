private
offsetString: aDuration
	^String streamContents: [ :stream |
		| positive |
		positive := aDuration asSeconds > 0
		 	or: [ aDuration asSeconds = 0
				and: [ aDuration nanoSeconds > 0 ] ].
		stream nextPut: (positive ifTrue: [ $+ ] ifFalse: [ $- ]).
		stream nextPutAll: (aDuration hours abs printPaddedWith: $0 to: 2 base: 10).
		stream nextPutAll: (aDuration minutes abs printPaddedWith: $0 to: 2 base: 10) ]