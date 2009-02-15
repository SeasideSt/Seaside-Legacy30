convenience-status
refreshAfter: aDuration location: aUrl
	self headerAt: 'Refresh' put: aDuration asSeconds seasideString , '; ' , aUrl seasideString