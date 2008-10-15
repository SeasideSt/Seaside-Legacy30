events
onBeforeSend: anObject
	"A pre-callback to modify the XMLHttpRequest object before it is sent. Use this to set custom headers etc. The XMLHttpRequest is passed as the only argument. This is an Ajax Event. You may return false in function to cancel the request."
	
	self optionAt: 'beforeSend' put: anObject asFunction