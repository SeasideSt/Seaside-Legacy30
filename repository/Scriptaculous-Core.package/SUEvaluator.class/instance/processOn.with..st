processing
processOn: aStream with: unused
	| script |
	script := SUScript on: canvas.
	callback ifNotNil: [ callback value: script ].
	WACurrentRequestContext value loadScripts do: [ :each | script add: each ].
	aStream javascript: script