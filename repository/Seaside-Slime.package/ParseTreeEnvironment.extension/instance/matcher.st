*seaside-slime
matcher
	^ matcher ifNil: [ matcher := RBParseTreeSearcher new ]