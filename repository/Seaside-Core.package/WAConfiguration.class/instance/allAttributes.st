attributes
allAttributes
	| attributes |
	attributes := IdentityDictionary new.
	
	self ancestorsDo: 
		[ :each |
		each canDefineAttributes ifTrue: [ attributes addAll: each attributes ] ].
	
	^ attributes