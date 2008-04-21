adding
addAllToPath: aCollectionOfStrings
	"convenice method to add a collection of strings to the path"
	aCollectionOfStrings do: [ :each |
		self addToPath: each ]