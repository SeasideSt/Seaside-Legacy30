instance creation
root: anHtmlRoot render: renderBlock
	| canvas |
	canvas := WAStaticHtmlCanvas root: anHtmlRoot.
	renderBlock value: canvas.
	^ self new nextPutAll: canvas document stream contents