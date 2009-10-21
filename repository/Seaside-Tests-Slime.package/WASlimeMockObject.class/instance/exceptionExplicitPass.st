accessing
exceptionExplicitPass
	"This should be ok because we #pass."
	^ [ self or ] on: Error do: [ :err | err pass ]