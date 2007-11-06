attributes-events
onFocus: aString
	"The onfocus event occurs when an element receives focus either by the pointing device or by tabbing navigation."

	self attributes at: 'onfocus' append: aString separator: ';'