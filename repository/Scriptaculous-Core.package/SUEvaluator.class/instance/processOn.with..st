processing
processOn: aStream with: unused
	| script |
	script := JSScript on: canvas.
	callback ifNotNil: [ callback value: script ].
	self requestContext loadScripts do: [ :each | script add: each ].
	aStream javascript: script