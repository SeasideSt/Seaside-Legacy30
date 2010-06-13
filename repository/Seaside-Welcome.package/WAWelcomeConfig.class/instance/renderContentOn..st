rendering
renderContentOn: html
	html form class: 'config'; with: [ 
		html heading
			level: 3;
			with: 'Basic Configuration'.
		self renderToolsOn: html.
		self renderWalkbacksOn: html.
		self renderServerUrlOn: html.
		self renderButtonsOn: html ]