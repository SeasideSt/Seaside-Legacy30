testing
testMessageSendValueWithPossibleArguments
	| send |
	send := MessageSend receiver: 1 selector: #+.
	self assert: (send valueWithPossibleArguments: (Array with: 2)) = 3.
	self assert: (send valueWithArguments: (Array with: 2)) = 3.
	self assert: (send value: 2) = 3.

	send := MessageSend receiver: false selector: #not.
	self assert: (send valueWithPossibleArguments: (Array with: 3)).
	
	send := MessageSend receiver: 1 selector: #+ arguments: #(2).
	self assert: (send valueWithPossibleArguments: (Array with: 4)) = 3.
	self assert: send value = 3.
	
	send := MessageSend receiver: Array selector: #with:with: arguments: #(1).
	self assert: (send valueWithPossibleArguments: (Array with: 2)) size = 2.

	send := MessageSend receiver: Array selector: #with:with:.
	self assert: (send value: 1 value: 2) size = 2.