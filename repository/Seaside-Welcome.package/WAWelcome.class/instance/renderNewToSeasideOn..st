rendering
renderNewToSeasideOn: html
	(html div)
		class: #box;
		class: #newToSeaside;
		with: [ 
					html heading level2 with: 'New to Seaside'.
					html paragraph: 'If you''re just starting out, the links below should help you find your way.'.
					(html heading)
						level4;
						with: 'Documentation'.
					self renderDocumentationOn: html.
					(html heading)
						level4;
						with: 'Examples'.
					self renderExamplesOn: html ]