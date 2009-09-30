accessing
parameters
	"Answer a dictionary with the query parameters."
	^ parameters ifNil: [ parameters := GRSmallDictionary new ]