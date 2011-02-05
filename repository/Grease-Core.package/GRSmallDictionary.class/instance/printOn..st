printing
printOn: aStream
	super printOn: aStream.
	
	aStream nextPut: $(.
	self size > 100
		ifTrue: [aStream nextPutAll: 'size '.
			self size printOn: aStream]
		ifFalse: [self keysAndValuesDo: [:key :value | 
				aStream print: key;
						 nextPutAll: '->';				
						 print: (value);
						 space]].
	aStream nextPut: $)	