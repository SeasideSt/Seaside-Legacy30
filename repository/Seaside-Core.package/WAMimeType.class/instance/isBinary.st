testing
isBinary
	| subTypes |
	self main = 'text' ifTrue: [ ^false ].
	self main = 'application' ifFalse: [ ^true ].
	subTypes := self sub findTokens: '+'.
	^ subTypes noneSatisfy: [ :each | 
		#('x-javascript' 'xml') includes: each ]