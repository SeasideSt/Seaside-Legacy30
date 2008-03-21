private
listing: aString forRequest: aRequest
	^ WARenderCanvas builder
		rootBlock: [ :html | html title: aRequest url ];
		renderResponse: [ :html |
			html heading level: 1; with: aRequest url.
			html unorderedList: [
				(SeasidePlatformSupport filesIn: aString) do: [ :each | 
					| localName |
					localName := SeasidePlatformSupport localNameOf: each.
					html listItem: [
						html anchor
							url: (self asAbsoluteUrl: localName relativeTo: aRequest);
							with: localName ] ] ] ]