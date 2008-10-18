testing-possible
testSendsDeprecatedMessage
	self 
		run: SlimeBlockLintRule sendsDeprecatedMessage
		selectors: #(renderSendsDeprecatedMessageOn:)