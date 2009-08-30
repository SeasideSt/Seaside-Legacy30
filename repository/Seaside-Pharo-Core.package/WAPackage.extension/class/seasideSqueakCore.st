*seaside-pharo-core
seasideSqueakCore
	^ self new
		name: 'Seaside-Pharo-Core';
		addDependency: 'Seaside-Core';
		addDependency: 'Seaside-Pharo-Platform';
		yourself