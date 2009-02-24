initialization
initialize
	super initialize.
	matcher := ParseTreeSearcher new.
	matcher 
		matchesAnyOf: #(
			'``@receiver seasideDeprecatedApi: ``@arg1'
			'``@receiver seasideDeprecatedApi: ``@arg1 details: ``@arg2' )
		do: [ :node :answer | answer add: node; yourself ]