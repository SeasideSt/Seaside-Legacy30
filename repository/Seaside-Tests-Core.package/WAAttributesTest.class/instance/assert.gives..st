private
assert: aBlock gives: aString
	| stream |
	aBlock value: (attributes := WAHtmlAttributes new).
	(WAHtmlStreamDocument
		on: (stream := String new writeStream)
		codec: self requestContext codec)
			print: attributes.
	self
		assert: stream contents = aString
		description: 'Expected ' , aString printString ,
			', but got ' , stream contents printString
		resumable: true