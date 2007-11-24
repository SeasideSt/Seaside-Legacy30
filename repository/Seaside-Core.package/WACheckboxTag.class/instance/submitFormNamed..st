attributes
submitFormNamed: formName
	self onClick: 'submitForm(''', formName toString, '''); return false;'