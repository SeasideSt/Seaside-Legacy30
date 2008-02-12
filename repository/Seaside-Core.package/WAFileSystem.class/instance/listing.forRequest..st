private
listing: aString forRequest: aRequest
	^ WARenderCanvas builder
		fullDocument: true;
		rootBlock: [ :html | html title: aRequest url ];
		render: [ :html |
			html heading level: 1; with: aRequest url.
			html unorderedList: [
				(SeasidePlatformSupport filesIn: aString) do: [ :each | 
					| localName |
					localName := SeasidePlatformSupport localNameOf: each.
					html listItem: [
						html anchor
							url: (self asAbsoluteUrl: localName relativeTo: aRequest);
							with: localName ] ] ] ]