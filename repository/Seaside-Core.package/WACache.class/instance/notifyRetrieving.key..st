private
notifyRetrieving: anObject key: anExternalID
	self pluginsDo: [ :each | each retrieving: anObject key: anExternalID ]