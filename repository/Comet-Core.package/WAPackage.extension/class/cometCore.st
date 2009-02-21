*comet-core
cometCore
	^ self new
		name: 'Comet-Core';
		description: 'Stream events from the server to client.';
		addDependency: 'Seaside-Canvas';
		addDependency: 'Scriptaculous-Core';
		addDependency: 'Seaside-Adaptors-Comanche';
		yourself