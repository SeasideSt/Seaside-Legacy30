testing
testCanStartWithAvailablePort
	adaptor starting.
	self deny: ( manager canStart: adaptor ).
	adaptor running.
	self deny: ( manager canStart: adaptor ).
	adaptor stopping.
	self deny: ( manager canStart: adaptor ).
	adaptor stopped.
	self assert: ( manager canStart: adaptor ).
	