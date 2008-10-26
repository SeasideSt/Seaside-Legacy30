options
appendTo: aElementOrSelector
	"For a draggable with a 'helper' specified, the matched element passed to 'appendTo' will be used as the helper's container. If not specified, the helper is appended to the same container as the draggable."

	self optionAt: 'appendTo' put: aElementOrSelector