accessing
properties
	"Answer a property dictionary."

	^ properties ifNil: [ properties := WASmallDictionary new ]