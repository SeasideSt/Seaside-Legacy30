accessing
exceptionExplicitResume
	"This should be ok because we #resume: a value."
	^ [ self or ] on: Error do: [ :err | err resume: nil ]