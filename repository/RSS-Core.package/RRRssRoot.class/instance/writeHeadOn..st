writing
writeHeadOn: aDocument
	self writePreamleOn: aDocument.
	self writeStylesOn: aDocument.
	
	aDocument openTag: 'rss' attributes: rssAttrs.
	aDocument openTag: 'channel' attributes: channelAttrs.