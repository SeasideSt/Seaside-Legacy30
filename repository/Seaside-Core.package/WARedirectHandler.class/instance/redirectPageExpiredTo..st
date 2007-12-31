actions
redirectPageExpiredTo: aUrl
	^ (WAResponse
		refreshWithMessage: 'That page has expired.'
		location: aUrl toString
		delay: 3)
		gone;
		yourself