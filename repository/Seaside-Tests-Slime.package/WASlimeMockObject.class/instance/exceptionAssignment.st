accessing
exceptionAssignment
	| value |
	value := [ self or ] on: Error do: [ :err | nil ]