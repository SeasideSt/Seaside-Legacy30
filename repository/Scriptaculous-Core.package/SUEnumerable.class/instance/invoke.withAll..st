querying
invoke: aString withAll: anArray 
	self 
		call: 'invoke'
		withArguments: (Array with: aString) , anArray