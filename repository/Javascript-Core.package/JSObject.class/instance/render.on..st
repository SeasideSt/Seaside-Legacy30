utilities
render: aRenderable on: aStream
	"Render aRenderable on aStream."
	
	| document html |
	document := JSDocument on: aStream codec: self requestContext codec.
	document open.
	canvas context document: document during: [
		html := canvas species context: canvas context.
		html render: aRenderable; flush.
		document close ]