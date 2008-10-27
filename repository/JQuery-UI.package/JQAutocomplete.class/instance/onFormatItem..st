events
onFormatItem: anObject
	"Provides advanced markup for an item. For each row of results, this function will be called. The returned value will be displayed inside an LI element in the results list. Autocompleter will provide 4 parameters: the results row, the position of the row in the list of results (starting at 1), the number of items in the list of results and the search term."

	self optionAt: 'formatItem' put: anObject