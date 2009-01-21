convenience-status
refreshAfter: aNumber location: aUrlOrString
	self headerAt: 'Refresh' put: aNumber seasideString , '; ' , aUrlOrString seasideString