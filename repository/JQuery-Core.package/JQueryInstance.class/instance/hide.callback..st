effects
hide: aDuration callback: anObject
	"Hide all matched elements using a graceful animation and firing an optional callback after completion."
	
	self call: 'hide' with: aDuration with: anObject asFunction