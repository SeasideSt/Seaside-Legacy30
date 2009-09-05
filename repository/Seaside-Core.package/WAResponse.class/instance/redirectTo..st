convenience-status
redirectTo: aUrlOrString
	self headerAt: 'Location' put: aUrlOrString seasideString.
	self found