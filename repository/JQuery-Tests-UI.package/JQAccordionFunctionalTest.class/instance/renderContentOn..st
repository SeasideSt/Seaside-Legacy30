rendering
renderContentOn: html
	html div
		script: html jQuery new accordion;
		with: [
			JQUiPlugin allSubclasses do: [ :each |
				html anchor: each name.
				html div: each comment ] ]