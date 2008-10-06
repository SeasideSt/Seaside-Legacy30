private
assert: aBlock gives: aString
	| stream |
	aBlock value: (attributes := WAHtmlAttributes new).
	WAHtmlStreamDocument new
		stream: (stream := String new writeStream);
		print: attributes.
	self
		assert: stream contents = aString
		description: 'Expected ' , aString printString ,
			', but got ' , stream contents printString
		resumable: true