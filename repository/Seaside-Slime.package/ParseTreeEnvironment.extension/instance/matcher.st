*seaside-slime
matcher
	^ matcher ifNil: [ matcher := ParseTreeSearcher new ]