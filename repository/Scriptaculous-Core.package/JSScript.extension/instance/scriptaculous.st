*scriptaculous-core
scriptaculous
	"Answer a factory that automatically adds to the receiving script."

	^ SUFactory on: canvas using: (MessageSend receiver: self selector: #add:)