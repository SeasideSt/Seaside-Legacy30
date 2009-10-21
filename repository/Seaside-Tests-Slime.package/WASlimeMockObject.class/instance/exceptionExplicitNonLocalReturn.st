accessing
exceptionExplicitNonLocalReturn
	"This should be ok because we do a non-local return."
	^ [ self or ] on: Error do: [ :err | ^ nil ]