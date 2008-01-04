processing
processOn: aStream
	| script |
	script := SUScript on: canvas.
	callback ifNotNil: [ callback value: script ].
	self session onLoadScripts
		do: [ :each | script add: each ].
	self session clearLoadScripts.
	aStream javascript: script