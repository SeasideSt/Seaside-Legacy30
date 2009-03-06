events-generated
onBeforeShowDay: anObject
	"The function takes a date as a parameter and must return an array with [0] equal to true/false indicating whether or not this date is selectable and [1] equal to a CSS class name(s) or <nowiki>'</nowiki> for the default presentation. It is called for each day in the datepicker before is it displayed."
	
	self optionAt: 'beforeShowDay' put: anObject asFunction