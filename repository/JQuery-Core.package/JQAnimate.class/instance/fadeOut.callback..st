animation
fadeOut: aDuration callback: anObject
	"Fade out all matched elements by adjusting their opacity and firing an optional callback after completion."
	
	self call: 'fadeOut' with: aDuration with: anObject asFunction