rendering
renderActionsOn: html
	html paragraph: [
		html anchor
			url: self application baseUrl;
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
			callback: [ SeasidePlatformSupport garbageCollect ];
			 with: 'Garbage Collect'.
		html break.
		html anchor
			callback: [
				self application clear.
				SeasidePlatformSupport garbageCollect ];
			 with: 'Clear Cache'.
		html break.
		html anchor
			callback: [
				self application clear.
				WAExpirySession resetCounters.
				SeasidePlatformSupport garbageCollect ];
			 with: 'Reset All' ].