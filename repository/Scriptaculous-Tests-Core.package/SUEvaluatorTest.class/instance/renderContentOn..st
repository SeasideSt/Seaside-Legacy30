rendering
renderContentOn: html
	html paragraph: 'CSS Selector:'.
	html paragraph: [
		html form: [
			html textInput
				id: 'selector';
				value: (selector ifNil: [ 'h1' ]);
				callback: [ :value | selector := value ].
			html submitButton
				onClick: (html evaluator
					triggerFormElement: 'selector';
					on: #renderEvaluatorOn: of: self;
					return: false);
				text: 'highlight' ] ]