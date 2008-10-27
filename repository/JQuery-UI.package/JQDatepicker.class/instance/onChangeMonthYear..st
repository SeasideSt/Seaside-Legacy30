events
onChangeMonthYear: anObject
	"Allows you to define your own event when the datepicker moves to a new month and/or year. The function receives the date of the first day of the first displayed month and the datepicker instance as parameters. ''this'' refers to the associated input field."

	self optionAt: 'onChangeMonthYear' put: anObject asFunction