options-generated
cursorAt: anObject
	"Moves the dragging helper so the cursor always appears to drag from the same position. Coordinates can be given as a hash using a combination of one or two keys: <code>{ top, left, right, bottom }</code>."

	self optionAt: 'cursorAt' put: anObject