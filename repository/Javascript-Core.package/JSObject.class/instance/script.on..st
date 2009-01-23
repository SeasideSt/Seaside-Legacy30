utilities
script: aBlock on: aStream
	"Evaluate aBlock and pass in a script object that is subsequently written to aStream."
	
	| script document |
	document := JSDocument new.
	document stream: aStream; open: nil.
	canvas context document: document during: [ 
		script := JSScript on: canvas.
		aBlock value: script.
		script addAll: document loadScripts ].
	script printOn: aStream