*prototype-core
prototype
	"Answer a Prototype factory that automatically adds to the receiving script."

	^ (PTFactory context: self renderContext using: (WADelayedSend receiver: self selector: #add:))
		rendererClass: self rendererClass;
		yourself