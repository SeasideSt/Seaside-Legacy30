options
helper: aStringOrFunction
	"Allows for a helper element to be used for dragging display. The 'clone' option will produce the 'ghosting' effect. Possible values: 'original', 'clone', Function. If you supply a function, it must return a valid DOM node."

	self optionAt: 'helper' put: aStringOrFunction