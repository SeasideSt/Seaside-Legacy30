notifications
retrieving: anExternalId
	count := count + 1.
	(count >= self interval) ifTrue: [ self reap ]