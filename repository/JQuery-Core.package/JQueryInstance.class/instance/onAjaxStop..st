ajax
onAjaxStop: anObject
	"Attach a function to be executed whenever an AJAX request completes."
	
	self call: 'ajaxStop' with: anObject asFunction