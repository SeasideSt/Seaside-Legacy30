private
createRegistry
	^ (WAApplication named: self registryName)
		preferenceAt: #sessionClass put: WATestSession;
		yourself