private-parsing
parseChar
	| current |
	current := self current.
	^current = $\
		ifTrue: [
			| next |
			next := self next.
			next = $"
				ifTrue: [ ^$" ].
			next = $\
				ifTrue: [ ^$\ ].
			next = $/
				ifTrue: [ ^$/ ].
			next = $b
				ifTrue: [ ^Character backspace ].
			next = $f
				ifTrue: [ ^Character newPage ].
			next = $n
				ifTrue: [ ^Character lf ].
			next = $r
				ifTrue: [ ^Character cr ].
			next = $t
				ifTrue: [ ^Character tab ].
			next = $u
				ifTrue: [ ^self parseHexCharacter ].
			self syntaxError: 'unknon escape character ', (String with: next) ]
		ifFalse: [
			(ForbiddenStringCharacters includes: current)
				ifTrue: [ self syntaxError: 'forbidden character ', (String with: current) ].
			current ]