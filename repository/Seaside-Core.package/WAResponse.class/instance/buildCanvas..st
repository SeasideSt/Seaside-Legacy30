convenience-rendering
buildCanvas: aBlock
	|builder|
	builder := WARenderCanvas builder
						fullDocument: true;
						yourself.
	self nextPutAll: (aBlock value: builder).