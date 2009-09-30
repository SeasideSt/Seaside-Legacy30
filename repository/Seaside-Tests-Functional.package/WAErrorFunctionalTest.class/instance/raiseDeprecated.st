actions
raiseDeprecated
	self 
		greaseDeprecatedApi: 'WAErrorFunctionalTest>>#raiseDeprecated'
		details: 'Test action phase deprecation.'.
	self 
		inform: 
			[ :html | 
			self 
				greaseDeprecatedApi: 'WAErrorFunctionalTest>>#raiseDeprecated'
				details: 'Test render phase deprecation.'.
			html paragraph: 'To be displayed' ]
		onAnswer: [ :v |  ]