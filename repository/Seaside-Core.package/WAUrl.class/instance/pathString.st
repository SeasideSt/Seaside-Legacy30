converting
pathString
	"Answer the path converted to a string."

	| document |
	^ String streamContents: [ :stream | 
		document := WAHtmlStreamDocument new.
		document stream: stream.
		self encodePathOn: document ]