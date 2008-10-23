*Seaside-Tests-Session
seasideTestsSession
	^ self new
		name: 'Seaside-Tests-Session';
		description: 'foo';
		addDependency: 'Seaside-Session';
		addDependency: 'Seaside-Tests-Core';
		yourself