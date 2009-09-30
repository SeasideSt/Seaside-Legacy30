*javascript-pharo-core
javascriptSqueakCore
	^ self new
		name: 'Javascript-Pharo-Core';
		addDependency: 'Javascript-Core';
		addDependency: 'Seaside-Pharo-Core';
		yourself