initialization
initializeBMP
	"Initializes the BMP, the Basic Multilingual Plane of UTF characters, using the encoding strategy of the receiver. This chaching strategy ensures that most commonly used characters can be encoded as efficient as possible."

	| stream characterLimit |
	characterLimit := self maximumCharacterValue.
	table := Array new: characterLimit + 1.
	stream := WriteStream on: (String new: 6).
	1 to: characterLimit + 1 do: [ :index |
		| encoded |
		self encode: (Character value: index - 1) on: stream reset.
		encoded := stream contents.
		table at: index put: (encoded size = 1
			ifTrue: [ encoded first ]
			ifFalse: [ encoded ]) ]