rendering
renderNextStepsOn: html
	html heading
		level: 3; 
		with: 'Next Steps'.
	html unorderedList: [
		html listItem: [
			html anchor
				url: '/browse';
				with: 'Browse'.
			html text: ' the applications installed in your image.' ].
		html listItem: [ 
			html anchor
				callback: [ self show: WAWelcomeConfig new ];
				with: 'Configure'.
			html text: ' your Seaside development environment.' ].
		html listItem: [
			html text: 'Check out examples of Seaside''s new '.
			html anchor
				url: '/javascript/jquery';
				with: 'JQuery'.
			html text: ' and '.
			html anchor
				url: '/javascript/jquery-ui';
				with: 'JQuery UI'.
			html text: ' integration.' ].
		html listItem: [
			html text: 'Join the '.
			html anchor
				url: 'http://lists.squeakfoundation.org/cgi-bin/mailman/listinfo/seaside';
				with: 'mailing list'.
			html text: ' to ask questions and get help.' ] ]