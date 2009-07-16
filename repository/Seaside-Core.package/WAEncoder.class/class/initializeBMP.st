initialization
initializeBMP
	"Initializes the BMP, the Basic Multilingual Plane of UTF characters, using the encoding strategy of the receiver. This chaching strategy ensures that most commonly used characters can be encoded as efficient as possible."

	| stream characterLimit |
	characterLimit := self maximumCharacterValue.
	"counting starts at zero so we need to add 1"
	table := Array new: characterLimit + 1.
	stream := WriteStream on: (String new: 6).
	0 to: characterLimit do: [ :index |
		| encoded |
		self encode: (Character codePoint: index) on: stream reset.
		encoded := stream contents.
		"Smalltalk indices are one based but character values start at 0"
		table at: index + 1 put: (encoded size = 1
			ifTrue: [ encoded first ]
			ifFalse: [ encoded ]) ]