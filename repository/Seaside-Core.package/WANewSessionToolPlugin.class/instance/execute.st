actions
execute
	| session |
	session := self requestor session.
	session expire; redirectTo: session newSessionUrl