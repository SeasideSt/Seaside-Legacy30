creation
html: aRenderable
	"Create DOM elements on-the-fly from the provided String of raw HTML."

	^ JQueryInstance on: canvas constructor: (Array with: (self render: aRenderable))