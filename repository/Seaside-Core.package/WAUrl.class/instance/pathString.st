converting
pathString
	"Answer the path converted to a string."

	| document |
	^ String streamContents: [ :stream | 
		document := WAHtmlStreamDocument on: stream.
		self encodePathOn: document ]