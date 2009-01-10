private
notifyStoring: anObject key: anExternalID
	self pluginsDo: [ :each | each storing: anObject key: anExternalID ]