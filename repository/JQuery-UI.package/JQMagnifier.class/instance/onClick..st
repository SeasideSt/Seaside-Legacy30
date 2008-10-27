events
onClick: anObject
	"This function is called when the user clicks on one of the magnified items."

	self optionAt: 'click' put: anObject asFunction