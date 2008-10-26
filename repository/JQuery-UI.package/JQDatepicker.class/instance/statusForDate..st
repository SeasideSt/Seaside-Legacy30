options
statusForDate: aFunction
	"The function to call to determine the status text for a date within the datepicker. The default function uses the ''dateStatus'' value and substitutes in information from the current date."

	self optionAt: 'statusForDate' put: aFunction