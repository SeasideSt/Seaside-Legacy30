accessing
list: aCollection
	"Append aCollection of items to display. The rendering can be customized using #labels:."

	aCollection ifNotNil: [ self addAll: aCollection ]