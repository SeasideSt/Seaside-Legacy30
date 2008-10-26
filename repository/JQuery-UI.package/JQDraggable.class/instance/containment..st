options
containment: aElementOrSelector
	"Constrains dragging to within the bounds of the specified element - can be a DOM element, 'parent', 'document' or a jQuery selector."

	self optionAt: 'containment' put: aElementOrSelector