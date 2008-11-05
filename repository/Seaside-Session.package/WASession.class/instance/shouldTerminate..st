private
shouldTerminate: aRequestContext
	"We can't call WASession>>sessionaAllowTermination below because it depends
	on having WACurrentRequestContext defined, which it is not when this method
	is called."
	^ (aRequestContext request fields includesKey: 'terminate')
		and: [ aRequestContext application preferenceAt: #sessionAllowTermination ]