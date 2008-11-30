*seaside-email
seasideEmail
	^ self new
		name: 'Seaside-Email';
		description: 'Contains convience classes for sending of emails and preventing header injections.';
		addDependency: 'Seaside-Core';
		yourself