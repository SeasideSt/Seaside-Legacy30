rendering
renderDescription: aString on: html
	| aStream |
	aString isNil ifTrue: [ ^self ].
	aStream := aString readStream.
	html preformatted: [
		html text: aStream nextLine.
		aStream atEnd ifFalse: [
			html render: Character cr.
			html text: aStream upToEnd ] ].
