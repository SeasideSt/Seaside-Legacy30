utilities
render: aRenderable on: aStream
	"Render aRenderable on aStream."
	
	| document html |
	document := JSDocument on: aStream codec: self requestContext codec.
	document open.
	self renderContext document: document during: [
		html := self rendererClass context: self renderContext.
		html render: aRenderable; flush.
		document close ]