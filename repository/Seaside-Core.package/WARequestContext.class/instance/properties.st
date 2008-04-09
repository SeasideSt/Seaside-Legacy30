accessing
properties
	"Answer a dictionary of custom request related properties."

	^ properties ifNil: [ properties := WASmallDictionary new ]