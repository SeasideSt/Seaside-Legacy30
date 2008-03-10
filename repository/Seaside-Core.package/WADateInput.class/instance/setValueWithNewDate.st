private callbacks
setValueWithNewDate
	^value := Date
		newDay: ((day min: (Date daysInMonthNumber: month forYear: year)) max: 1)
		monthNumber: month
		year: year