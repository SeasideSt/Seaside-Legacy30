private
pingProcess
	self allInstancesDo: [ :each | each ping ].
	WAPlatform current waitCometProcess