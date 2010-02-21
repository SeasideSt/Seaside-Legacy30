utilities
render: aRenderable on: aStream
	"Render aRenderable on aStream."
	
	| document html attributes |
	document := JSDocument on: aStream codec: self requestContext codec.
	self renderContext document: document during: [
		html := self rendererClass context: self renderContext.
		html render: aRenderable.
		html document loadScripts isEmpty ifFalse: [
			html script: (String streamContents: [ :stream | 
				html document loadScripts
					do: [ :each | each javascriptOn: stream ]
					separatedBy: [ stream nextPut: $; ] ]) ].
		html flush ]