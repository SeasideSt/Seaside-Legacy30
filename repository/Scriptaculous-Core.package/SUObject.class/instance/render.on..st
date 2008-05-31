utilities
render: anObject on: aStream
	| document html previous |
	WACurrentRequestContext value rememberLoadScripts: [ 
		document := SUDocument new.
		document stream: aStream; open: nil.
		previous := canvas context document.
		canvas context document: document.
		html := canvas species
			context: canvas context
			callbacks: (canvas context 
				callbacksFor: nil).
		html render: anObject; flush.
		document close: nil.
		canvas context document: previous ]