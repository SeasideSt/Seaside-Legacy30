rendering
renderExtractCallbackCodeToMethodOn: html
	html anchor callback: [ self foo. self bar ]; with: 'foo'