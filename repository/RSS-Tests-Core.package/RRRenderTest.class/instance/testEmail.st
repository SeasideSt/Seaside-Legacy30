testing
testEmail
	| actualContent expectedContent |
	actualContent := self render: [ :rss |
		rss author: (WAEmailAddress address: 'joesmith@example.com' username: 'Joe Smith'). ].
	expectedContent := '<author>Joe Smith &lt;joesmith@example.com&gt;</author>'.
	self assert: actualContent = expectedContent