ajax-events
onAjaxSuccess: anObject
	"Attach a function to be executed whenever an AJAX request completes."
	
	self call: 'ajaxSuccess' with: anObject asFunction