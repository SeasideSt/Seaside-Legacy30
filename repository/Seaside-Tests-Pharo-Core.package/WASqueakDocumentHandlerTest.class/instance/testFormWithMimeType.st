as yet unclassified
testFormWithMimeType
	| handler |
	"Test that requesting a form as JPEG actually results in a JPEG"
	self formClassExists ifFalse: [ ^ self ].
	
	handler := WADocumentHandler
		document: self sampleForm
		mimeType: WAMimeType imageJpeg
		fileName: nil.
	
	self assert: (handler document contents beginsWith: #( 255 216 )) "JPEG Magic number"