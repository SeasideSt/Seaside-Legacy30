attributes
writeAttribute: aString value: anObject
	"Add or replace attribute aString with anObject."
	
	self call: 'writeAttribute' arguments: (Array with: aString with: anObject)