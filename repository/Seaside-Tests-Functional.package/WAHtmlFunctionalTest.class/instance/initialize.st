initialization
initialize
	super initialize.
	message := self initialMessage.
	booleanList := #(a b c d) collect: [:key | key -> ((Array with: true with: false) atRandom)].
	number := 10 atRandom