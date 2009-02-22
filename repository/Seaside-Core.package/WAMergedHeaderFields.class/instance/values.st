enumerating
values
	^ delegates
		inject: OrderedCollection new
		into: [ :result :each | result addAll: each values; yourself ]