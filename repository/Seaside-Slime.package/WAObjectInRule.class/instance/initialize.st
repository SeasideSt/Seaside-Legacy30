initialization
initialize
	super initialize.
	matcher := RBParseTreeSearcher new.
	matcher 
		matches: '``@object in: [ :`var | | `@temps | `@.statements ]'
		do: [ :node :answer | answer isNil ifTrue: [ node ] ifFalse: [ answer ] ]