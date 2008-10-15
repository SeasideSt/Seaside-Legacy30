ajax
onAjaxComplete: anObject
	"Attach a function to be executed whenever an AJAX request completes."
	
	self call: 'ajaxComplete' with: anObject asFunction