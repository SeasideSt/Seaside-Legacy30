testing
testExample
	| acutalContent expectedContent |
	acutalContent := self render: [ :rss |
		rss description: 'Das super geile Blog.'.
		rss contentEncoded: '<p>Das super geile Blog.</p>'.
		rss generator: 'Pier 1.0.9-alpha'.
		rss language english ].
	expectedContent := '<description>Das super geile Blog.</description><content:encoded><![CDATA[<p>Das super geile Blog.</p>]]></content:encoded><generator>Pier 1.0.9-alpha</generator><language>en</language>'.
	self assert: acutalContent = expectedContent