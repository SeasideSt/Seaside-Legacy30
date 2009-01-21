testing-documents
testDocument
	self response document: 'Seaside'.
	self assertLines: #('HTTP/1.1 200 OK' 'Content-Type: text/plain' 'Content-Length: 7' '' 'Seaside')