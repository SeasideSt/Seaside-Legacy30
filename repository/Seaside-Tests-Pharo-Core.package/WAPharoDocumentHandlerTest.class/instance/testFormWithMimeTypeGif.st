tests
testFormWithMimeTypeGif
	"Test that requesting a form as GIF actually results in a GIF"
	| handler |
	self formClassExists ifFalse: [ ^ self ].
	
	handler := WADocumentHandler
		document: self sampleForm
		mimeType: WAMimeType imageGif
		fileName: nil.
	
	self assert: (handler document contents beginsWith: #(16r47 16r49 16r46 16r38) asByteArray) "GIF Magic number"