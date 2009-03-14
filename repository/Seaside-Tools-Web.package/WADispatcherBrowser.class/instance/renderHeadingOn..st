rendering
renderHeadingOn: html
	html heading class: 'logo'; with: [
		html anchor
			url: (WAUrl new 
				hostname: 'www.seaside.st';
				yourself);
			with: 'Seaside' ].
	html heading class: 'title'; with: [
		html anchor
			url: self dispatcher baseUrl;
			with: self title ]