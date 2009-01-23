utilities
script: aBlock on: aStream
	"Evaluate aBlock and pass in a script object that is subsequently written to aStream."
	
	| script document |
	document := JSDocument on: aStream codec: self requestContext codec.
	document open.
	canvas context document: document during: [ 
		script := JSScript on: canvas.
		aBlock value: script.
		script addAll: document loadScripts ].
	script printOn: aStream