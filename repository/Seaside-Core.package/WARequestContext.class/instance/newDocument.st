accessing-dynamic
newDocument
	"Answer a new Document configured to write onto our Response's stream using the
	current Codec. Try to use the Document class specified by the closest Handler
	but fall back on WAHtmlDocument if there is none."
	
	^ ((self handler isNil
		ifTrue: [ WAHtmlDocument ]
		ifFalse: [ self handler documentClass ])
			on: self response stream codec: self codec)
			scriptGenerator: (self application configuration at: #scriptGeneratorClass) new;
			yourself