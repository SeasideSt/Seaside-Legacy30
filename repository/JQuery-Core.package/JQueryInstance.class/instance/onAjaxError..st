ajax-events
onAjaxError: anObject
	"Attach a function to be executed whenever an AJAX request completes."
	
	self call: 'ajaxError' with: anObject asFunction