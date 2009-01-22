rendering
renderActionsOn: html
	html paragraph: [
		html anchor
			url: (self application baseUrl
				with: self class name);
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
			callback: [ WAPlatform current garbageCollect ];
			with: 'Garbage Collect'.
		html break.
		html anchor
			callback: [
				self application clear.
				WAPlatform current garbageCollect ];
			with: 'Clear Cache'.
		html break.
		html anchor
			callback: [
				self application clear.
				WAExpirySession resetCounters.
				WAPlatform current garbageCollect ];
			with: 'Reset All' ].