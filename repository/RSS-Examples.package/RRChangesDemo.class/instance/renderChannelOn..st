rendering
renderChannelOn: rss
	rss title: [
		rss text: 'Recent changes to the Seaside image'.
		rss space.
		rss text: SeasidePlatformSupport shortImageName].
	rss link: self baseUrl asString , '/'. "Should go to the default app if defined"
	rss description: [
		rss text: 'Changes that were recently made to the Seaside image.'.
		rss space.
		rss text: SeasidePlatformSupport imageName].
	rss language englishUnitedStates.
	rss publicationDate:
			(RRRfc822DateTime newDateAndTime: self dateOfLastChange).
	rss lastBuildDate:
			(RRRfc822DateTime newDateAndTime: self dateOfImage).
	rss defaultDocumentation.
	rss defaultGenerator.