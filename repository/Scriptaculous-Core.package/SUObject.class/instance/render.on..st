utilities
render: anObject on: aStream
	| document html |
	document := SUDocument new.
	document stream: aStream; open: nil.
	canvas context document: document.
	html := canvas species
		context: canvas context
		callbacks: (canvas context 
			callbacksFor: nil).
	html render: anObject; flush.
	document close: nil.
	canvas context document: nil