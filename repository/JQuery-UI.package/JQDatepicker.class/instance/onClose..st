events
onClose: anObject
	"Allows you to define your own event when the datepicker is closed, whether or not a date is selected. The function receives the selected date(s) as a date or array of dates and the datepicker instance as parameters. ''this'' refers to the associated input field."

	self optionAt: 'onClose' put: anObject asFunction