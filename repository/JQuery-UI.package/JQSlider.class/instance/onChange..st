events
onChange: anObject
	"Function that gets called on slide stop, but only if the slider position has changed.  Takes arguments e and ui, for event and user-interface respectively.  Use ui.value (single-handled sliders) to obtain the value of the current handle, $(..).slider('value', index) to get another handles' value."

	self optionAt: 'change' put: anObject asFunction