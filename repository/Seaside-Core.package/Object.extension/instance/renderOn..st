*seaside-core
renderOn: aRenderer
	"Override this method to customize how objects (not components) are rendered when passed as an argument to #render:. The default is the return value of #displayString.
	Just remember that you can not use #callback:, #on:of:, or #call:"

	aRenderer text: self