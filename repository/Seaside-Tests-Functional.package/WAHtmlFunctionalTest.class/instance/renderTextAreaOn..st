rendering
renderTextAreaOn: html
	| position |
	position := message = self initialMessage
		ifTrue: [ 6 ]
		ifFalse: [ 'End' ].
	html form: [
		html text: message.
		html paragraph
			class: 'hint';
			with: 'The text area below should have the focus and be wholly selected, unless it has its initial value, ' , self initialMessage printString , ', in which case you should see the cursor right after the "o" of "Hello".'.
		html textArea
			columns: 20;
			setCursorPosition: position;
			on: #message of: self.
		html break.
		html submitButton ]