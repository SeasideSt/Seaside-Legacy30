events
onReceive: anObject
	"Function that gets called when a connected sortable list has received an item from another list."

	self optionAt: 'receive' put: anObject asFunction