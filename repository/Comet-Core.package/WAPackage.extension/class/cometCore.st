*comet-core
cometCore
	^ self new
		name: 'Comet-Core';
		comment: 'Stream events from the server to client.';
		addDependency: 'Seaside-Canvas';
		addDependency: 'Scriptaculous-Core';
		addDependency: 'Seaside-Adaptors-Comanche';
		yourself