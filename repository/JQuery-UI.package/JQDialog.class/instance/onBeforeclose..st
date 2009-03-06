events-generated
onBeforeclose: anObject
	"This event is triggered when a dialog attempts to close. If the beforeclose event handler (callback function) returns false, the close will be prevented."
	
	self optionAt: 'beforeclose' put: anObject asFunction