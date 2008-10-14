private
iteratorFor: anObject return: aBoolean
	^ anObject isBlock
		ifFalse: [ anObject asFunction ]
		ifTrue: [ (JSFunction on: self canvas iterator: anObject) return: aBoolean ]