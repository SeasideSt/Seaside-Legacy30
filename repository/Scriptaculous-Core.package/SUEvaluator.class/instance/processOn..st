processing
processOn: aStream
	| script |
	script := SUScript on: canvas.
	callback ifNotNil: [ callback value: script ].
	WACurrentContext value loadScripts
		do: [ :each | script add: each ].
	aStream javascript: script