*prototype-core
prototype
	"Answer a Prototype factory that automatically adds to the receiving script."

	^ PTFactory on: self canvas using: (WADelayedSend receiver: self selector: #add:)