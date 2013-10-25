as yet unclassified
renderBlock: anHtmlRenderingBlock
	self
		string:
			(WAHtmlCanvas builder
				fullDocument: true;
				render: anHtmlRenderingBlock)