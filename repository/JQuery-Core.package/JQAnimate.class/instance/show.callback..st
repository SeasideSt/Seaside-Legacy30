animation
show: aDuration callback: anObject
	"Show all matched elements using a graceful animation and firing an optional callback after completion."
	
	self call: 'show' with: aDuration with: anObject asFunction