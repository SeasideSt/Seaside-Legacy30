evaluation
allValues: aBlock
	|kPrev results|
	kPrev := failureContinuation.
	results := OrderedCollection new.
	(Continuation currentDo:
		[:kRetry |
		failureContinuation := [:v | kRetry value: false].
		results add: aBlock value.
		kRetry value: true])
			ifTrue: [self fail].
	failureContinuation := kPrev.
	^ results asArray