utilities
render: aRenderable on: aStream
	"Render aRenderable on aStream."
	
	| document html previous |
	self requestContext rememberLoadScripts: [ 
		document := JSDocument new.
		document stream: aStream; open: nil.
		previous := canvas context document.
		canvas context document: document.
		html := canvas species context: canvas context.
		html render: aRenderable; flush.
		document close: nil.
		canvas context document: previous ]