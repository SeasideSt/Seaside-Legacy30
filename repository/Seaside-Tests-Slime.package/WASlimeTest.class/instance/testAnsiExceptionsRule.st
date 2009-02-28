testing-transform
testAnsiExceptionsRule
	self 
		run: WAAnsiExceptionsRule new
		changes: #( 
			'exception1 [ self or ] on: Error do: [ :err | self or ]'
			'exception2 [ self or ] on: Error do: [ :err | self or. self or ]'
			'exception3 [ self or ] on: Error do: [ :err | | a | a := 0 ]' )