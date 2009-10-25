*seaside-adaptors-swazoo
seasideAdaptorsSwazoo
	^ self new
		name: 'Seaside-Adaptors-Swazoo';
		description: 'Makes Seaside run on the Swazoo Web server.';
		license: #LGPL;
		addDependency: 'Seaside-Core';
		addDependency: 'Seaside-Swazoo';
		yourself