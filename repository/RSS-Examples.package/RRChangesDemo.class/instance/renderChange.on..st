rendering
renderChange: aChange on: rss
	| url |
	url := self baseUrl addToPath: 'tools/classbrowser'; yourself.
	aChange addParametersTo: url.
	rss item: [
		rss title: aChange title.
		rss author: aChange author. "has to be an email address"
		rss link: url.
		rss description: [
				rss renderHtml: [ :html |
					self renderDescription:  aChange description on: html ]].
		rss publicationDate: (RRRfc822DateTime newDateAndTime: aChange timestamp) ]