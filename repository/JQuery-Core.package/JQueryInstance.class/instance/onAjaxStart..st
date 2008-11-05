ajax-events
onAjaxStart: anObject
	"Attach a function to be executed whenever an AJAX request completes."
	
	self call: 'ajaxStart' with: anObject asFunction