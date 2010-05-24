rendering
renderDocumentationOn: html
	html paragraph: [ 
		html text: 'The  '.
		html anchor
			url: 'http://book.seaside.st/';
			with: 'Seaside book'.
		html text: ' will teach you all you need to know about Seaside and how to build killer web applications.' ]