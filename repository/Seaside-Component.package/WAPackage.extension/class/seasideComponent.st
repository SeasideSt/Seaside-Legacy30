*seaside-component
seasideComponent
	^ self new
		name: 'Seaside-Component';
		description: 'Stateful, reuseable components to encapsulate a small part of a page.';
		addDependency: 'Seaside-Core';
		addDependency: 'Seaside-Squeak-Continuation';
		yourself