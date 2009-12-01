running
execute
	"Internal method to start the task running. DO NOT OVERRIDE THIS METHOD! Subclasses
	should implement #go to specify behaviour.
	In order to prevent looping infinitely when #go does not make a #call:, we cache
	the  request context and make sure it has changed in the next loop iteration. RequestContexts
	are destroyed once the response is returned, so there isn't much overhead to hanging onto an
	extra requestContext."
	
	| request |
	request := nil.
	[ (request == self requestContext)
			ifTrue: [ WATaskInfiniteLoop signal: 'Infinite loop detected while executing a task.' ]
			ifFalse: [ request := self requestContext ].
	self answer: self go ] repeat