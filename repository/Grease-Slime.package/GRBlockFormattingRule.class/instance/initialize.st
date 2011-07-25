initialization
initialize
	super initialize.
	self matcher
		matches: '[ :`@args | | `@temps | `@.stmts ]'
		do: [ :node :answer |
			answer isNil 
				ifFalse: [ answer ]
				ifTrue: [
					| source |
					source := node methodNode source.
					(source notNil and: [ node left notNil and: [ node right notNil ] ]) ifTrue: [
						| first last |
						first := source at: node left + 1 ifAbsent: [ $ ].
						last := source at: node right - 1 ifAbsent: [ $ ].
						(first isSeparator and: [ last isSeparator ])
							ifFalse: [ node ] ] ] ]