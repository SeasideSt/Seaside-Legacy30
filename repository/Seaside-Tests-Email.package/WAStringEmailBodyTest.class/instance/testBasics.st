tests
testBasics
	| body |
	body := WAStringEmailBody string: 'hello'.
	self assert: body isPlainText.
	self assert: body string equals: 'hello'.
	self assert: body contentType equals: 'text/plain; charset=UTF-8'