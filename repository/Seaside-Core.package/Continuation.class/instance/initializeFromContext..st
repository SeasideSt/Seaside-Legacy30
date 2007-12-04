private
initializeFromContext: aContext
	| valueStream context |
	valueStream := WriteStream on: (Array new: 20).
	context := aContext.
	[ context notNil ] whileTrue: [
		context serialiseOn: valueStream.
		context := context sender ].
	values := valueStream contents