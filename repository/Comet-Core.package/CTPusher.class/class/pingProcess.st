private
pingProcess
	self allInstancesDo: [ :each | each ping ].
	GRPlatform current waitCometProcess