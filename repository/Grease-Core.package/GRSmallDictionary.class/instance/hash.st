comparing
hash
	| answer |
	answer := self size.
	self keysAndValuesDo: [ :key :value |
		"not ideal, vulerable to key - value permutations"
		answer := (answer bitXor: key hash) bitXor: value hash ].
	^ answer 