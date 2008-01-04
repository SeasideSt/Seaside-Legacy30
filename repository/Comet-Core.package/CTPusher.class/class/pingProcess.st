private
pingProcess
	self allInstancesDo: [ :each | each ping ].
	delay wait