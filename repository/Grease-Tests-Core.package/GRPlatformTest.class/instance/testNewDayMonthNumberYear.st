testing
testNewDayMonthNumberYear
	| date |
	date := Date newDay: 6 monthNumber: 11 year: 2007.
	self assert: date year = 2007.
	self assert: date dayOfYear = 310