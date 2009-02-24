initialization
initialize
	super initialize.
	matcher := ParseTreeSearcher new.
	matcher 
		matches: '``@receiver `@message: ``@args'
		do: [ :node :answer |
			| class |
			(node receiver isVariable and: [ (class := Smalltalk classNamed: node receiver name) notNil and: [ class isBehavior and: [ (class includesBehavior: WAPresenter) and: [ (WASlime isWithinCallback: node) not ] ] ] ])
				ifTrue: [ answer add: node ].
			answer ]