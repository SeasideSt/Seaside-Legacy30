utilities
script: aBlock on: aStream
	"Evaluate aBlock and pass in a script object that is subsequently written to aStream."
	
	| script |
	self requestContext rememberLoadScripts: [ 
		script := JSScript on: canvas.
		aBlock value: script.
		self requestContext loadScripts
			do: [ :each | script add: each ] ].
	script printOn: aStream