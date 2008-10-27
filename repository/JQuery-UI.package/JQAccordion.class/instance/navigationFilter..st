options
navigationFilter: anObject
	"Overwrite the default location.href-matching with your own matcher."

	self optionAt: 'navigationFilter' put: anObject asFunction