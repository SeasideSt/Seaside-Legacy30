rendering
renderSourceOn: html
	| source |
	source := (class sourceCodeAt: selector ifAbsent: [ ^ self ])
		seasideString readStream.
	html strong: class name , '>>' , source nextLine; break.
	[ source atEnd ] whileFalse: [
		[ source peek = Character tab ]
			whileTrue: [ html space; space; space. source next ].
		html render: source nextLine; break ]