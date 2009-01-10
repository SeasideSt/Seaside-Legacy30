private
notifyReaped: anObject key: aString
	self pluginsDo: [ :each | each reaped: anObject key: aString ]