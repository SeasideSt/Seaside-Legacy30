rendering
renderContentOn: html
	| image |
	super renderContentOn: html.
	
	html heading level2; with: 'Actions'.
	
	image := SmalltalkImage current.	
	html unorderedList: [
		html listItem: [
			html anchor
				callback: [ image snapshot: true andQuit: false ];
				with: 'Save' ].
		html listItem: [
			html anchor
				callback: [ image snapshot: true andQuit: true ];
				with: 'Save and Quit' ].
		html listItem: [
			html anchor
				callback: [ image snapshot: false andQuit: true ];
				with: 'Quit Without Saving' ] ]