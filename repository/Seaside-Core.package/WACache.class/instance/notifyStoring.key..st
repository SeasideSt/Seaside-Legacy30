private
notifyStoring: anObject key: aString
	self pluginsDo: [ :each | each storing: anObject key: aString ]