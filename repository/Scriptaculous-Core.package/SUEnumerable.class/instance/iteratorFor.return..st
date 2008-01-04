private
iteratorFor: anObject return: aBoolean
	^ anObject isBlock
		ifFalse: [ anObject asFunction ]
		ifTrue: [ (SUFunction on: self canvas iterator: anObject) return: aBoolean ]