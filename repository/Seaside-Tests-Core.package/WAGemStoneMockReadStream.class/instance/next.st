public
next
	| value |
	value := string at: position.
	position := position + 1.
	^value