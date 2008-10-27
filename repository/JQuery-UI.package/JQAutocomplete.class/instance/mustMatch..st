options
mustMatch: aBoolean
	"If set to true, the autocompleter will only allow results that are presented by the backend. Note that illegal values result in an empty input box."

	self optionAt: 'mustMatch' put: aBoolean