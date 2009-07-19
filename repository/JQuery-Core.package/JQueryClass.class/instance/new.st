creation
new
	"Wrap jQuery functionality around this DOM Element."

	^ (JQueryInstance
		context: self renderContext
		constructor: (Array with: JSStream this))
			rendererClass: self rendererClass;
			yourself