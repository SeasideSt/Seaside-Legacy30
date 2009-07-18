accessing-dynamic
newDocument
	"Answer a new Document configured to write onto our Response's stream using the
	current Codec. Try to use the Document class specified by the closest EntryPoint
	but fall back on WAHtmlDocument if there is no EntryPoint."
	
	^ (self entryPoint isNil
		ifTrue: [ WAHtmlDocument ]
		ifFalse: [ self entryPoint documentClass ])
			on: self response stream codec: self codec