options
cursorAt: aObjectOrArray
	"Moves the dragging element/helper so the cursor always appears to drag from the same position. Coordinates can be given as a hash using a combination of the keys 'top', 'left', 'right', 'bottom'."

	self optionAt: 'cursorAt' put: aObjectOrArray