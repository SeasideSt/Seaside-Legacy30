rendering
renderDialogOn: html
	html heading level2; with: '<dialog>'.
	
	html dialog: [
		html definitionTerm: 'Costello'.
		html definitionData: 'Look, you gotta first baseman?'.
		html definitionTerm: 'Abbott'.
		html definitionData: 'Certainly.'.
		html definitionTerm: 'Costello'.
		html definitionData: 'Who''s playing first?'.
		html definitionTerm: 'Abbott'.
		html definitionData: 'That''s right.'.
		html definitionTerm: 'Costello'.
		html definitionData: 'When you pay off the first baseman every month, who gets the money?'.
		html definitionTerm: 'Abbott'.
		html definitionData: 'Every dollar of it'. ]