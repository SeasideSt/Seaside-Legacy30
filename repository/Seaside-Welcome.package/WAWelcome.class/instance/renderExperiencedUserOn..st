rendering
renderExperiencedUserOn: html
	html div
		class: #box;
		class: #experiencedUser;
		with: [
			html heading level2 with: 'Next Steps'.
			html unorderedList: [
				html listItem: [
					html anchor url: '/browse'; with: 'Browse'.
					html text: ' the applications installed in your image.' ].				
				html listItem: [
					html text: 'Join the '.
					html anchor url: 'http://www.seaside.st/community/mailinglist'; with: 'mailing list'.
					html text: ' to get help and ask questions.' ].				
				html listItem: [
					html text: 'Check out examples of Seaside''s new '.
					html anchor url: '/javascript/jquery'; with: 'JQuery'.
					html text: ' and '.
					html anchor url: '/javascript/jquery-ui'; with: 'JQuery UI'.
					html text: ' integration.' ] ] ]
		
