accessing-dynamic
newDocument
	"Answer a response factory configured in the closest handler."
	
	^ (self entryPoint isNil
		ifTrue: [ WAHtmlStreamDocument ]
		ifFalse: [ self entryPoint documentClass ])
			on: self response stream codec: self codec