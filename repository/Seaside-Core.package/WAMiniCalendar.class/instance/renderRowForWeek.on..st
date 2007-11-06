rendering
renderRowForWeek: aWeek on: html
	html tableRow: [
		aWeek datesDo: [ :each | self renderCellForDate: each on: html ] ]