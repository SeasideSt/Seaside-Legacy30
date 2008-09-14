configuration
configuration
	"Answer a default user configuration for the receiver."

	^ configuration ifNil: [ configuration := self defaultConfiguration ]