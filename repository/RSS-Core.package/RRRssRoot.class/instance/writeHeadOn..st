writing
writeHeadOn: aDocument
	self writeStylesOn: aDocument.
	
	aDocument openTag: 'rss' attributes: rssAttrs.
	aDocument openTag: 'channel' attributes: channelAttrs.