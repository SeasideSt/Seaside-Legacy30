writing
writeHeadOn: aDocument
	self writePreambleOn: aDocument.
	self writeStylesOn: aDocument.
	
	aDocument openTag: 'rss' attributes: rssAttrs.
	aDocument openTag: 'channel' attributes: channelAttrs.