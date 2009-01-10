private
reap: anObject key: anExternalID
	self reapAction reap: anObject key: anExternalID.
	self notifyReaped: anObject key: anExternalID