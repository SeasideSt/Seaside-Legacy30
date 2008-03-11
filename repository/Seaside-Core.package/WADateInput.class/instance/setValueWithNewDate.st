private callbacks
setValueWithNewDate
	^value := Date
		newDay: ((day min: (Month daysInMonth: month forYear: year)) max: 1)
		monthNumber: month
		year: year