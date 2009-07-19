creation
html: aRenderable
	"Create DOM elements on-the-fly from the provided String of raw HTML."

	^ (JQueryInstance
		context: self renderContext
		constructor: (Array with: (self render: aRenderable)))
			rendererClass: self rendererClass;
			yourself