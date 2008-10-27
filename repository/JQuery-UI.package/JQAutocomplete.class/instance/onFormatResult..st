events
onFormatResult: anObject
	"Similar to formatItem, but provides the formatting for the value to be put into the input field. Again three arguments: Data, position (starting with one) and total number of data."

	self optionAt: 'formatResult' put: anObject asFunction