public
name
	^ '[' , adaptor port greaseString , '] ' , adaptor class name , (adaptor codec class = GRNullCodec
		ifFalse: [ ' (' , adaptor codec name , ')' ] ifTrue: [ '' ])