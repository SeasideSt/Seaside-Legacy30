private
listing: aString forRequest: aRequest
	^ WARenderCanvas builder
		fullDocument: true;
		rootBlock: [ :html | html title: aRequest url ];
		render: [ :html |
			html heading level: 1; with: aRequest url.
			html unorderedList: [
				(SeasidePlatformSupport filesIn: aString) do: [ :each | 
					html listItem: [
						html anchor
							url: aRequest url , (each copyAfterLast: $/);
							with: (each copyAfterLast: $/) ] ] ] ]