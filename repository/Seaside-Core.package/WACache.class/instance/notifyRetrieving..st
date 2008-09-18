private
notifyRetrieving: anExternalID
	self pluginsDo: [ :each | each retrieving: anExternalID ]