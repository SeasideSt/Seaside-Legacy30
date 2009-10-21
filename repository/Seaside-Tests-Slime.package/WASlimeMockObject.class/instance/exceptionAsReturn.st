accessing
exceptionAsReturn
	^ [ self or ] on: Error do: [ :err | nil ]