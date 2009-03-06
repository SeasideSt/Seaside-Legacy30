events-generated
onSlide: anObject
	"This event is triggered on every mouse move during slide. Takes arguments e and ui, for event and user-interface respectively. Use ui.value (single-handled sliders) to obtain the value of the current handle, $(..).slider('value', index) to get another handles' value."
	
	self optionAt: 'slide' put: anObject asFunction