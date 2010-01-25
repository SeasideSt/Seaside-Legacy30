testing
testStartUp
	| collection |
	WAKeyGenerator startUp.
	collection := Set new: self count.
	self count timesRepeat: [ collection add: (WAKeyGenerator current keyOfLength: 48) ].
	
	WAKeyGenerator startUp.
	self count timesRepeat: [
		self
			deny: (collection includes: (WAKeyGenerator current keyOfLength: 48))
			description: 'This is extremely unlikely to fail, if it does repeatedly then there is something wrong with the initialization of the random-generator.' ]