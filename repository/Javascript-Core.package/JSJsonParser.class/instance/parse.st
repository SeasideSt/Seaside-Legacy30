public
parse
	| value |
	self nextNonWhiteSpace.
	value := self parseValue.
	self atEnd ifFalse: [
		self syntaxError: 'end exptected' ].
	^value