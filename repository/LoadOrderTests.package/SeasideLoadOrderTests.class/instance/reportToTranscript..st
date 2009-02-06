initialize-release
reportToTranscript: aString

	| list |
	list := aString subStrings: (Array with: $().
	list := list collect: [:each | each withBlanksTrimmed].
	list := list reject: [:each | each isEmpty].
	list := list reject: [:each | 
		16 < each size and: [ (each copyFrom: each size - 14 to: each size) = ' is Undeclared)'].
	].
	list isEmpty ifTrue: [^self].
	Transcript nextPutAll: aString.
	