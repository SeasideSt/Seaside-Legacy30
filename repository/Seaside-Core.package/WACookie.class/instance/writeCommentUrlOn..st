writing-private
writeCommentUrlOn: aStream
	self commentUrl isNil ifTrue: [ ^self ].
	
	aStream nextPutAll: '; CommentURL'.
	self
		write: self commentUrl toString
		asQuotedStringOn: aStream