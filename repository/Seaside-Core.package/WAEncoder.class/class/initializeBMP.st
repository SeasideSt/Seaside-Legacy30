initialization
initializeBMP
	"Initializes the BMP, the Basic Multilingual Plane of UTF characters, using the encoding strategy of the receiver. This chaching strategy ensures that most commonly used characters can be encoded as efficient as possible."

	| stream characterLimit |
	characterLimit := self maximumCharacterValue.
	table := Array new: characterLimit.
	stream := WriteStream on: (String new: 6).
	1 to: characterLimit do: [ :index |
		self encode: (Character value: index - 1) on: stream reset.
		table at: index put: (stream position = 1
			ifTrue: [ stream contents first ]
			ifFalse: [ stream contents ]) ]