enumerating
keys
	^ delegates
		inject: OrderedCollection new
		into: [ :result :each | result addAll: each keys; yourself ]