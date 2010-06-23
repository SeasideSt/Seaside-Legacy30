rendering
renderContentOn: html
	html form class: 'config'; with: [ 
		html heading
			with: 'Basic Configuration'.
		html anchor
			class: 'goback';
			callback: [ self answer ];
			with: '[ go back ]'.
		self renderDescriptionOn: html.
		self renderToolsOn: html.
		self renderWalkbacksOn: html.
		self renderServerUrlOn: html.
		self renderButtonsOn: html ]