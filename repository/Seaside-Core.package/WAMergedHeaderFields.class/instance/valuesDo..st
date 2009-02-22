enumerating
valuesDo: aBlock
	delegates do: [ :each | each valuesDo: aBlock ]