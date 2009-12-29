accessing
pairsDo
	|array|
	array := #(1 2 3 4).
	array pairsDo: [ :a :b | b ]