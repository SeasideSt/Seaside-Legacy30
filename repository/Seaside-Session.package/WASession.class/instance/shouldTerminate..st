private
shouldTerminate: aRequestContext
	^ (aRequestContext request fields includesKey: 'terminate')
		and: [ self sessionAllowTermination ]