rendering
renderChange: aChange on: rss
	| url |
	url := self baseUrl
		takeServerParametersFromRequest: self requestContext request;
		"don't reference WABrowser directly to avoid a hard dependency on a Squeak package"
		addToPath: 'tools/classbrowser' "WABrowser applicationName";
		yourself.
	aChange addParametersTo: url.
	rss item: [
		rss title: aChange title.
		rss author: aChange author. "has to be an email address"
		rss link: url.
		rss description: [
				rss renderHtml: [ :html |
					self renderDescription:  aChange description on: html ] ].
		rss publicationDate: (RRRfc822DateTime newDateAndTime: aChange timestamp) ]