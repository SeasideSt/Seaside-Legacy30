rendering
renderLogoOn: html
	html anchor
		url: (WAUrl new 
			hostname: 'www.seaside.st';
			yourself);
		with: [ html div class: 'smallLogo' ]