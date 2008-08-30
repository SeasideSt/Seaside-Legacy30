actions
redirectPageExpiredTo: aUrl 
	^ (WAResponse 
		refreshWithMessage: 'That page has expired.'
		location: aUrl seasideString
		delay: 3)
		gone;
		yourself