convenience
redirectTo: aUrlOrString
	self headerAt: 'Location' put: aUrlOrString seasideString.
	self redirect