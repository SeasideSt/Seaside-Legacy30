accessing
exceptionExplicitReturn
	"This should be ok because we #return: a value."
	^ [ self or ] on: Error do: [ :err | err return: nil ]