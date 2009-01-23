testing
testEncodedUrl
	self assert: 'Seaside Aubergines' encoder: WAUrlEncoder gives: 'Seaside%20Aubergines'.
	self assert: 'www.seaside.st' encoder: WAUrlEncoder gives: 'www.seaside.st'.
	self assert: '~seaside-info_' encoder: WAUrlEncoder gives: '~seaside-info_'.
	self assert: 'http://www.seaside.st?foo=1&bar=2' encoder: WAUrlEncoder gives: 'http%3a%2f%2fwww.seaside.st%3ffoo%3d1%26bar%3d2'.
	self assert: 'a%' encoder: WAUrlEncoder gives: 'a%25'.
	self assert: (String with: Character cr) encoder: WAUrlEncoder gives: '%0d'