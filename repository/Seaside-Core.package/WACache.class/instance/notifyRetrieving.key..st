private
notifyRetrieving: anObject key: aString
	self pluginsDo: [ :each | each retrieving: anObject key: aString ]