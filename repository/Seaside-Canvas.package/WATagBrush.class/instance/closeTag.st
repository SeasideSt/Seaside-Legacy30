private
closeTag
	"Close the receiving tag onto the document."

	self isClosed ifFalse: [ self document closeTag: self tag ]