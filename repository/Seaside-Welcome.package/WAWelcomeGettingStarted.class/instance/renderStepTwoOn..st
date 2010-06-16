rendering
renderStepTwoOn: html
	html heading
		level2
		with: 'Try out some examples'.
		
	html
		unorderedList: [ 
			html listItem: [ 
				html anchor
					callback: [ self show: WAWelcomeCounterExample new ];
					with: 'Counter'.
				html text: ', a simple Seaside component.' ].
			html listItem: [
				html anchor
					callback: [ self show: WAWelcomeMultiCounterExample new ];
					with: 'Multi-Counter'.
				html text: ', showing how Seaside components can be re-used.' ].
			html listItem: [ 
				html anchor
					callback: [ self show: WAWelcomeTaskExample new ];
					with: 'Task'.
				html text: ', illustrating Seaside''s innovative approach to application control flow.' ] ]