initialization
initialize
	super initialize.
	matcher := ParseTreeSearcher new.
	matcher 
		matches: '``@object in: [ :`var | | `@temps | `@.statements ]'
		do: [ :node :answer | answer isNil ifTrue: [ node ] ifFalse: [ node ] ]