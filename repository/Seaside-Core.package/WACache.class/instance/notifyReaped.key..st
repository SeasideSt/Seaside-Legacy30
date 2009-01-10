private
notifyReaped: anObject key: anExternalID
	self pluginsDo: [ :each | each reaped: anObject key: anExternalID ]