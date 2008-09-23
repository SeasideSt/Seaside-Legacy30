exception handling
handleExceptionsDuring: aBlock
	| handler |
	handler := nil.
		
	^ aBlock
		on: self exceptionsToCatch
		do: [ :e | (handler ifNil: [ handler := self new ]) handleException: e ]