utilities
render: aRenderable on: aStream
	"Render aRenderable on aStream."
	
	| document html |
	document := JSDocument new.
	document stream: aStream; open: nil.
	canvas context document: document during: [
		html := canvas species context: canvas context.
		html render: aRenderable; flush.
		document close: nil ]