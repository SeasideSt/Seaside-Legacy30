effects
slideUp: aDuration callback: anObject
	"Hide all matched elements by adjusting their height and firing an optional callback after completion."
	
	self call: 'slideUp' with: aDuration with: anObject asFunction