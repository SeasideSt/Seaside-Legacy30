*seaside-tests-pharo-continuation
seasideTestsSqueakContinuation
	^ self new
		name: 'Seaside-Tests-Pharo-Continuation';
		description: 'Tests of Pharo continuation implementation';
		addDependency: 'Seaside-Pharo-Continuation';
		addDependency: 'Seaside-Tests-Platform';
		yourself