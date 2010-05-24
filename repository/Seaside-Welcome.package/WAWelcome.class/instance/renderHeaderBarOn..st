rendering
renderHeaderBarOn: html
	html div
		class: #header;
		with: [
			html div
				class: #headerImage;
				with: [
					html anchor
						url: 'http://www.seaside.st';
						with: [
							html image 
								url: JQAllFunctionalTestsLibrary / #seastarPng;
								height: 50; 
								width: 50
						].
				].
			html div
				class: #headerText;
				with: [
					html anchor
						url:  'http://www.seaside.st';
						with: [ html heading level2; with: 'Seaside ', GRPlatform current seasideVersion greaseString ]
				]
			]