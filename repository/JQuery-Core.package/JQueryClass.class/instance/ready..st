creation
ready: anObject
	"Binds a function to be executed whenever the DOM is ready to be traversed and manipulated."

	^ self expression: anObject asFunction