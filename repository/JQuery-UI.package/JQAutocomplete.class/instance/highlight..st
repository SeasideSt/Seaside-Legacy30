options
highlight: aBooleanOrFunction
	"Whether and how to highlight matches in the select box. Set to false to disable. Set to a function to customize. The function gets the value as the first argument and the search term as the second and must return the formatted value."

	self optionAt: 'highlight' put: aBooleanOrFunction