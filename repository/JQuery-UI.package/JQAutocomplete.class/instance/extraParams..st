options
extraParams: aObject
	"Extra parameters for the backend. If you were to specify { bar:4 }, the autocompleter would call my_autocomplete_backend.php?q=foo&bar=4 (assuming the input box contains 'foo'). The param can be a function that is called to calculate the param before each request."

	self optionAt: 'extraParams' put: aObject