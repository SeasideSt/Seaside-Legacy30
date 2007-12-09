rendering
renderContentOn: html
	self
		renderColumnsOn: html;
		renderModeButtonsOn: html;
		renderMessageOn: html;
		renderContentPaneOn: html.
	html anchor
		callback: [];
		extraPath: 'xxx';
		with: 'xxx'