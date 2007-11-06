attributes-events
onClick: aString
	"The onclick event occurs when the pointing device button is clicked over an element."

	self attributes at: 'onclick' append: aString separator: ';'