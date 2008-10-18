*seaside-slime
isRenderingMethod
	(self selector numArgs > 0 and: [ self selector beginsWith: #render ])
		ifFalse: [ ^ false ].
	self compiledMethod literals do: [ :each |
		(each isSymbol and: [ Slime isBrushSelector: each ])
			ifTrue: [ ^ true ] ].
	^ false