tests
testInvokeSimple
	| x continuation |
	x := self callcc: [ :cc | continuation := cc. false ].
	x ifFalse: [ continuation invoke: [ true & true ] ]. "Must have a least one message send in this block for VW"
	self assert: x