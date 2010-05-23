rendering
renderNewToSeasideOn: html
	html div
		class: #newToSeaside; 
		with: [
			html heading level2 with: 'New to Seaside'.
			html paragraph: [
				html text: 'The  '.
				html anchor url: 'http://book.seaside.st'; with: 'Seaside book'.
				html text: ' will teach you all you need to know about Seaside and how to build killer web applications.'
				].

			html  heading level4; with: 'Examples'.
			html unorderedList: [
				html listItem with: [
					html anchor
						callback: [example := WAWelcomeCounterExample new];
						with: 'Counter'.
					html text: ', a simple Seaside component.'.
				].
			
				html listItem with: [
					html anchor
						callback: [example := WAWelcomeMultiCounterExample new];
						with: 'Multi-Counter'.
					html text: ', showing how Seaside components can be re-used.'.
				].
			
				html listItem with: [
					html anchor
						callback: [example := WAWelcomeTaskExample new];
						with: 'Task'.
					html text: ', illustrating Seaside''s innovative approach to application control flow.'.
				].
			]
		].

