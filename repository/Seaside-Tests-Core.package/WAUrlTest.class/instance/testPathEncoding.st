testing-encoding
testPathEncoding
	url path: #( 'foo/bar' ).
	self assert: url printString = '/foo%2fbar'.

	url path: #( 'foo bar' ).
	self assert: url printString = '/foo%20bar'.

	url path: #( 'foo+bar' ).
	self assert: url printString = '/foo%2bbar'.

	url path: #( 'foo%bar' ).
	self assert: url printString = '/foo%25bar'