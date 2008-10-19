exception handling
handleExceptionsDuring: aBlock context: aRequestContext
	| handler |
	"We store the handler in a local variable so that if the error handling
	block is triggered multiple times, we will get the same error handler."
	handler := nil.
		
	^ aBlock
		on: self exceptionsToCatch
		do: [ :e | (handler ifNil: [ handler := self context: aRequestContext ]) handleException: e ]