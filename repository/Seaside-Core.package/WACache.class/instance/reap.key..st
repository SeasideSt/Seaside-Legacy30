private
reap: anObject key: anExternalID
	reapAction reap: anObject key: anExternalID.
	self notifyReaped: anObject key: anExternalID