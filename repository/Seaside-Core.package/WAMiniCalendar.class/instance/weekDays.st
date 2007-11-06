private
weekDays
	^ (1 to: 7) collect: [ :i | (Date nameOfDay: i) first: 3 ]