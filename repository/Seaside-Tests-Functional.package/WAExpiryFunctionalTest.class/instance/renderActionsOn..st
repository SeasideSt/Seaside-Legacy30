rendering
renderActionsOn: html
	html paragraph: [
		html anchor
			url: self application baseUrl;
			 with: 'New Session'.
		html break.
		html anchor
			callback: [
				self session unregister.
				self requestContext redirectTo: self application baseUrl ];
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
				self requestContext redirectTo: self application baseUrl ];
			 with: 'Clear Cache'.
		html break.
		html anchor
			callback: [
				self application clearHandlers.
				WAExpirySession resetCounters.
				SeasidePlatformSupport garbageCollect.
				self requestContext redirectTo: self application baseUrl ];
			 with: 'Reset All' ].