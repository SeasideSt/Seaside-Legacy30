testing
testEncodedHtml
	self assert: 'Seaside' encoder: WAHtmlEncoder gives: 'Seaside'.
	self assert: '<div id="&amp;">' encoder: WAHtmlEncoder gives: '&lt;div id=&quot;&amp;amp;&quot;&gt;'