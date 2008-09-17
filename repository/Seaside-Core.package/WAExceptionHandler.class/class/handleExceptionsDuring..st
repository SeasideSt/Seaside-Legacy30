exception handling
handleExceptionsDuring: aBlock
	^ aBlock
		on: self exceptionsToCatch
		do: [ :e | self new handleException: e ]