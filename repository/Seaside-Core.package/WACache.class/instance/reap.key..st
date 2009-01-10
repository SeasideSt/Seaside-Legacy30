private
reap: anObject key: aString
	self reapAction reap: anObject key: aString.
	self notifyReaped: anObject key: aString