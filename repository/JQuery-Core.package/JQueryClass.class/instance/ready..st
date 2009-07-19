creation
ready: anObject
	"Binds a function to be executed whenever the DOM is ready to be traversed and manipulated."

	^ (JQueryInstance
		context: self renderContext
		constructor: (Array with: anObject asFunction))
			rendererClass: self rendererClass;
			yourself