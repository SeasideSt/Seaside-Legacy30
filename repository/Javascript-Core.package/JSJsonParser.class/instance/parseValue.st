private-parsing
parseValue
	| current |
	current := self current.
	current = $"
		ifTrue: [ ^self parseString ].
	('-0123456789' includes: current)
		ifTrue: [ ^self parseNumber ].
	current = ${
		ifTrue: [ ^self parseObject ].
	current = $[
		ifTrue: [ ^self parseArray ].
	current = $t
		ifTrue: [ ^self parseTrue ].
	current = $f
		ifTrue: [ ^self parseFalse ].
	current = $n
		ifTrue: [ ^self parseNull ].
	self syntaxError: 'unexpected character ', (String with: current)