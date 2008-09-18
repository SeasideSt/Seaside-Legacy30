private
notifyStoring: anExternalID
	self pluginsDo: [ :each | each storing: anExternalID ]