animation
fadeIn: aDuration callback: anObject
	"Fade in all matched elements by adjusting their opacity and firing an optional callback after completion."
	
	self call: 'fadeIn' with: aDuration with: anObject asFunction