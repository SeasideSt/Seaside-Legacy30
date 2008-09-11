accessing-headers
headerAt: aKeyString putDate: aDateAndTime
	"sets a header who's value is a DateAndTime
	correctly formats the date"
	self
		headerAt: aKeyString
		put: (WAPrinter httpDate print: aDateAndTime)