testing-block
testDeprecatedApiProtocol
	| class |
	class := self
		defineClass: #WASlimeMockObject
		superclass: #WAObject.
	self compile: 'deprecated1 self greaseDeprecatedApi: ''WASlimeMockObject>>#deprecated1'' details: ''Something.''' in: class.
	self compile: 'deprecated2 self greaseDeprecatedApi: ''WASlimeMockObject>>#deprecated'' details: ''Something.''' in: class.
	self compile: 'deprecated3 self greaseDeprecatedApi: ''WASlimeMock>>#deprecated3'' details: ''Something.''' in: class.
	self 
		runRule: WADeprecatedApiProtocolRule
		selectors: #(deprecated2 deprecated3)