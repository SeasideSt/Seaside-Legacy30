*seaside-pharo-development
seasideSqueakDevelopment
	^ self new
		name: 'Seaside-Pharo-Development';
		addDependency: 'Seaside-Development';
		addDependency: 'Seaside-Pharo-Tools-Web';	
		addDependency: 'Seaside-Pharo-Flow'; "For WAWalkbackErrorHandler"
		yourself