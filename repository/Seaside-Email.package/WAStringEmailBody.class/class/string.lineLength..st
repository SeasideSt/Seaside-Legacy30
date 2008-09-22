instance creation
string: aString lineLength: anInteger
	| string |
	string := String streamContents: [ :stream |
		| lines |
		lines := self splitIntoLines: (self convertCrLfToCrIn: aString).
		lines do: [ :each |
			each size <= anInteger
				ifTrue: [ stream nextPutAll: each ]
				ifFalse: [
					(self splitString: each intoChunksNoLongerThan: anInteger)
						do: [ :chunk | stream nextPutAll: chunk ]
						separatedBy: [ stream cr ] ] ]
			separatedBy: [ stream cr ] ].
	^self new
		string: string;
		yourself