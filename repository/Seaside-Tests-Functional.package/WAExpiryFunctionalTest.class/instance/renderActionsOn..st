rendering
renderActionsOn: html 
	html paragraph: 
		[ html anchor
			url: (self application baseUrl with: self class name);
			with: 'New Session'.
		html break.
		html anchor
			callback: [ self session unregister ];
			with: 'Expire'.
		html break.
		html anchor
			callback: [ WAExpirySession resetCounters ];
			with: 'Reset Counters'.
		html break.
		html anchor
			callback: [ GRPlatform current garbageCollect ];
			with: 'Garbage Collect'.
		html break.
		html anchor
			callback: 
				[ self application clear.
				GRPlatform current garbageCollect ];
			with: 'Clear Cache'.
		html break.
		html anchor
			callback: 
				[ self application clear.
				WAExpirySession resetCounters.
				GRPlatform current garbageCollect ];
			with: 'Reset All' ]