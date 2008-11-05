ajax-events
onAjaxSend: anObject
	"Attach a function to be executed whenever an AJAX request completes."
	
	self call: 'ajaxSend' with: anObject asFunction