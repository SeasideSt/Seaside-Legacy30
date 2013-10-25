as yet unclassified
initialize
	super initialize.
	boundary := self class newBoundary.
	self headerAt: 'Content-Type' put: 'multipart/alternative; boundary=' , boundary