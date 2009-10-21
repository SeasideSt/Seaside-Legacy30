accessing
exceptionEscapeSelectors
	"selectors that escape from the exception handler when called on an Exception"
	^ #(outer pass resignalAs: resume resume: retry retryUsing: return return:)