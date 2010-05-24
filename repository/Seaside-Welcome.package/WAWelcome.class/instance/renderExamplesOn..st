rendering
renderExamplesOn: html
	^ html
		unorderedList: [ 
			html listItem
				with: [ 
					(html anchor)
						callback: [ example := WAWelcomeCounterExample new ];
						with: 'Counter'.
					html text: ', a simple Seaside component.' ].
			html listItem
				with: [ 
					(html anchor)
						callback: [ example := WAWelcomeMultiCounterExample new ];
						with: 'Multi-Counter'.
					html text: ', showing how Seaside components can be re-used.' ].
			html listItem
				with: [ 
					(html anchor)
						callback: [ example := WAWelcomeTaskExample new ];
						with: 'Task'.
					html text: ', illustrating Seaside''s innovative approach to application control flow.' ] ]