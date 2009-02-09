running
execute
	"Internal method to start the task running. DO NOT OVERRIDE THIS METHOD! Subclasses
	should implement #go to specify behaviour.
	In order to prevent looping infinitely when #go does not make a #call:, we cache
	the identity hash of the request context and make sure it has changed in the next
	loop iteration."
	
	| hash |
	hash := nil.
	[ (hash = self requestContext identityHash)
			ifTrue: [ WATaskInfiniteLoop signal: 'Infinite loop detected while executing a task.' ]
			ifFalse: [ hash := self requestContext identityHash ].
	self answer: self go ] repeat