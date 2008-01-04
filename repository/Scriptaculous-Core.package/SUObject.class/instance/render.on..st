utilities
render: anObject on: aStream
	| previous document html |
	previous := canvas context document.
	document := SUDocument new.
	document stream: aStream; open: nil.
	canvas context document: document.
	html := canvas species
		context: canvas context
		callbacks: canvas callbacks.
	html render: anObject; flush.
	document close: nil.
	canvas context document: previous