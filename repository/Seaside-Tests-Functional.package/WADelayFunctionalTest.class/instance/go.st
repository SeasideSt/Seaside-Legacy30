actions
go
	self call: (WAComponent new
		addMessage: '3 seconds';
		addDecoration: (WADelayedAnswerDecoration new delay: 3);
		yourself)