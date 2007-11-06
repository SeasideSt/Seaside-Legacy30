evaluation
oneOf: aCollection
	^ self valueOfOneOf: (aCollection collect: [:ea | [ea] fixTemps])