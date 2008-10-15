creation
ready: anObject
	"Binds a function to be executed whenever the DOM is ready to be traversed and manipulated."

	^ JQueryInstance on: canvas constructor: (Array with: anObject asFunction)