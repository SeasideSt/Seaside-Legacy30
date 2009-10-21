accessing
exceptionAsParameter
	self value: ([ self or ] on: Error do: [ :err | nil ])