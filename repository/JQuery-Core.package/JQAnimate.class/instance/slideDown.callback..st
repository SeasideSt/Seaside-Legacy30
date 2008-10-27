animation
slideDown: aDuration callback: anObject
	"Reveal all matched elements by adjusting their height and firing an optional callback after completion."
	
	self call: 'slideDown' with: aDuration with: anObject asFunction