accessing
pathString
	"returns the path converted to a string, for an empty path returns '/'"
	path ifNil: [ ^ '/' ].
	
	^String streamContents: [ :stream |
		stream nextPut: $/.
		path
			do: [ :each | stream nextPutAll: each ]
			separatedBy: [ stream nextPut: $/ ] ]