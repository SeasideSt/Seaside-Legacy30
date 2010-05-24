*seaside-welcome
seasideWelcome
	^ self new
		name: 'Seaside-Welcome';
		description: 'A welcome screen for new users.';
		addDependency: 'Seaside-Environment';
		addDependency: 'Seaside-Tools-Web';
		addDependency: 'Seaside-Examples';
		addDependency: 'Seaside-Development';
		url: #seasideUrl;
		yourself