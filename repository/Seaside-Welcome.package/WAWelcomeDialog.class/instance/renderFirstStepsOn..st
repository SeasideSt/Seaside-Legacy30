rendering
renderFirstStepsOn: html
	html heading
		level: 3; 
		with: 'New to Seaside'.
	html paragraph: 'If you''re just starting out, the links below should help you find your way:'.
	html unorderedList: [ 
		html listItem: [
			html text: 'The  '.
			html anchor
				url: 'http://book.seaside.st/';
				with: 'Seaside Book'.
			html text: ' will teach you all you need to know about Seaside and how to build the killer web application.' ].
		html listItem: [ 
			html text: 'The '.
			html anchor
				url: 'http://www.swa.hpi.uni-potsdam.de/seaside/tutorial';
				with: 'Seaside Tutorial'.
			html text: ' has 12 chapters and introduces a sample application to explain the main features of Seaside.' ] ]