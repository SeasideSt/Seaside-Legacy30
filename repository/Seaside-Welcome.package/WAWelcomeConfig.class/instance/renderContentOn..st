rendering
renderContentOn: html
	html form class: 'config'; with: [ 
		html heading
			level: 1;
			with: 'Basic Configuration'.
		self renderToolsOn: html.
		self renderWalkbacksOn: html.
		html heading
			level: 1;
			with: 'Advanced Configuration'.
		self renderServerUrlOn: html.
		self renderButtonsOn: html ]