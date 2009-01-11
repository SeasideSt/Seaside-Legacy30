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
			url: self handler baseUrl;
			with: self title ]