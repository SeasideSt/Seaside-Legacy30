options-generated
hideIfNoPrevNext: aBoolean
	"Normally the previous and next links are disabled when not applicable (see <code>minDate</code>/<code>maxDate</code>). You can hide them altogether by setting this attribute to true."

	self optionAt: 'hideIfNoPrevNext' put: aBoolean