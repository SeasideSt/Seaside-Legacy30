private
pushAll: aCollection during: aBlock
	^ aCollection isEmpty
		ifTrue: [ aBlock value ]
		ifFalse: [
			self requestContext
				push: aCollection first
				while: [ self pushAll: aCollection allButFirst during: aBlock ] ]