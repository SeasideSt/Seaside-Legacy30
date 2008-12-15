private-parsing
parseElements
	^Array streamContents: [ :stream |
		self current ~= $] ifTrue: [
			stream nextPut: self parseValue.
			[ self current = $, ] whileTrue: [
				self nextNonWhiteSpace.
				stream nextPut: self parseValue ] ] ]