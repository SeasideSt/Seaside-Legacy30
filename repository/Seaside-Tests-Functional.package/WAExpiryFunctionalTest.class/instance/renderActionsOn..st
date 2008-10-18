rendering
renderActionsOn: html
	html paragraph: [
		html anchor
			url: self session newSessionUrl;
			 with: 'New Session'.
		html break.
		html anchor
			callback: [ self session unregister; redirectTo: self session newSessionUrl ];
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
				self application clearHandlers.
				SeasidePlatformSupport garbageCollect.
				self session redirectTo: self session newSessionUrl ];
			 with: 'Clear Cache'.
		html break.
		html anchor
			callback: [
				self application clearHandlers.
				WAExpirySession resetCounters.
				SeasidePlatformSupport garbageCollect.
				self session redirectTo: self session newSessionUrl ];
			 with: 'Reset All' ].