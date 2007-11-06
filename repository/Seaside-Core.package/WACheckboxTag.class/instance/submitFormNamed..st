attributes
submitFormNamed: formName
	self onClick: 'submitForm(''', formName displayString, '''); return false;'