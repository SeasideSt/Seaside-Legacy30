testing
testMessageSendProtocol
	| send |
	send := MessageSend receiver: 1 selector: #+.
	self assert: send argumentCount = 1.
	self assert: send arguments size = 0.
	self assert: send isMessageSend.
	self deny: [ ] isMessageSend.
	self assert: send fixCallbackTemps == send.
	send := MessageSend receiver: 1 selector: #+ argument: 2.
	self assert: send argumentCount isZero.
	self assert: send arguments size = 1.
	self assert: send fixCallbackTemps == send