*seaside-slime
seasideSlime
	^ self new
		name: 'Seaside-Slime';
		description: 'Code critis for Seaside. Detects common types of bugs.';
		addDependency: 'Seaside-Component';
		addDependency: 'Seaside-Session';
		addDependency: 'Refactoring-Core';
		yourself