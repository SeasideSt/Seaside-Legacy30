private
weeksDo: aBlock
	| day nextMonth |
	day := Date newDay: 1 monthNumber: self monthIndex year: self year.
	day := day subtractDays: day dayOfWeek.
	nextMonth := (self monthIndex \\ 12) + 1.
	[ day monthIndex = nextMonth ] whileFalse: [
		aBlock value: day.
		day := day addDays: 7 ]