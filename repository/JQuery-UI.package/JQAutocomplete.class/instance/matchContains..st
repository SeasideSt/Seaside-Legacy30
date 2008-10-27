options
matchContains: aBoolean
	"Whether or not the comparison looks inside (i.e. does 'ba' match 'foo bar') the search results. Important only if you use caching. Don't mix with autofill."

	self optionAt: 'matchContains' put: aBoolean