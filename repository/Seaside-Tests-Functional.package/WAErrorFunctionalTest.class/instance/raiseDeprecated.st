actions
raiseDeprecated
	self seasideDeprecatedApi: 'Test action phase deprecation'
		details: 'action details'.
	self inform: [ :html |
		self seasideDeprecatedApi: 'Test render phase deprecation'	
			details: 'render details'.
		html paragraph: 'To be displayed' ]