effects
toggle: aDuration callback: anObject
	"Toggle displaying each of the set of matched elements using a graceful animation and firing an optional callback after completion."
	
	self call: 'toggle' with: aDuration with: anObject asFunction