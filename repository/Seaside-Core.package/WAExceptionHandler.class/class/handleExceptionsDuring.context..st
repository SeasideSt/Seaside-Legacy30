exception handling
handleExceptionsDuring: aBlock context: aRequestContext
	| handler |
	"We store the handler in a local variable so that if the error handling
	block is triggered multiple times, we will get the same error handler."
	handler := nil.
		
	^ aBlock
		on: self
		do: [ :exception | 
			[ (handler ifNil: [ handler := self context: aRequestContext ])
				handleException: exception ]
					"If there's an error while running the exception handler, fall
					back on an internal error response."
					on: Error
					do: [ :error | self internalError: error context: aRequestContext ] ]