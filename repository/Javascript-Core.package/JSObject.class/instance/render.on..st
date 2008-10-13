utilities
render: anObject on: aStream
	| document html previous |
	self requestContext rememberLoadScripts: [ 
		document := JSDocument new.
		document stream: aStream; open: nil.
		previous := canvas context document.
		canvas context document: document.
		html := canvas species context: canvas context.
		html render: anObject; flush.
		document close: nil.
		canvas context document: previous ]