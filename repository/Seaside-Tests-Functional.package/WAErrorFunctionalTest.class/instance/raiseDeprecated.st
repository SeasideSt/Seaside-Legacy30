actions
raiseDeprecated
	self
		seasideDeprecatedApi: 'WAErrorFunctionalTest>>#raiseDeprecated'
		details: 'Test action phase deprecation.'.
	self inform: [ :html |
			self 
				seasideDeprecatedApi: 'WAErrorFunctionalTest>>#raiseDeprecated'	
				details: 'Test render phase deprecation.'.
			html paragraph: 'To be displayed' ]
		onAnswer: [ :v | ]