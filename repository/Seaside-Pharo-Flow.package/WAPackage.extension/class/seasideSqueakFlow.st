*seaside-pharo-flow
seasideSqueakFlow
	^ self new
		name: 'Seaside-Pharo-Flow';
		addDependency: 'Seaside-Flow';
		addDependency: 'Seaside-Pharo-Platform';
		addDependency: 'Seaside-Pharo-Continuation';
		yourself