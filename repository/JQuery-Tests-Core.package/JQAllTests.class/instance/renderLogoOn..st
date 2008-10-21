rendering
renderLogoOn: html
	html heading level: 1; class: 'logo'; with: [
		html anchor
			url: self url;
			title: self title;
			with: [ html span: self title ] ]