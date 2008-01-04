modifying
replace: anObject
	"Replaces element by the content of the html argument and returns the removed element."

	self call: 'replace' argument: (self render: anObject)