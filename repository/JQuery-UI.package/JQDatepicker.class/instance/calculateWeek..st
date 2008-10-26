options
calculateWeek: aFunction
	"Perform the week of the year calculation. This function accepts a Date as a parameter and returns the number of the corresponding week of the year. The default implementation uses the ISO 8601 definition of a week: weeks start on a Monday and the first week of the year contains January 4. This means that up to three days from the previous year may be included in the first week of the  current year, and that up to three days from the current year may be included in the last week of the previous year."

	self optionAt: 'calculateWeek' put: aFunction