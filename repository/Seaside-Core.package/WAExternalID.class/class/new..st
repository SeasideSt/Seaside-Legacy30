instance-creation
new: aNumber
	| key |
	key := String new: aNumber.
	GeneratorMutex critical: [
		1 to: aNumber do: [ :index |
			key at: index put: (GeneratorSpace atRandom: Generator) ] ].
	^ key