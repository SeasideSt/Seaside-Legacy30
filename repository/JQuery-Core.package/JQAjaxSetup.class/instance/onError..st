events
onError: anObject
	"A function to be called if the request fails. The function gets passed three arguments: The XMLHttpRequest object, a string describing the type of error that occurred and an optional exception object, if one occurred. This is an Ajax Event."
	
	self optionAt: 'error' put: anObject asFunction