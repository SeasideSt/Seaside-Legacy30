animation
slideToggle: aDuration callback: anObject
	"Toggle the visibility of all matched elements by adjusting their height and firing an optional callback after completion."
	
	self call: 'slideToggle' with: aDuration with: anObject asFunction