events
onOver: anObject
	"This function is called as an accepted draggable is dragged 'over' (within the tolerance of) this droppable."

	self optionAt: 'over' put: anObject asFunction