public
text: anObject
	"Emit anObject onto the target document."

	self flush.
	self document print: anObject