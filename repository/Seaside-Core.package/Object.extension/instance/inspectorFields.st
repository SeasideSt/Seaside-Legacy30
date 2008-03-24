*Seaside-Core
inspectorFields
	| members |
	members := Array new writeStream.
	self class allInstVarNames keysAndValuesDo: [ :index :each | members nextPut: each -> (self instVarAt: index) ].
	self class isVariable ifTrue: 
		[ 1 
			to: self size
			do: [ :index | members nextPut: index -> (self at: index) ] ].
	^ members contents