rendering-parts
renderDefaultRequestHandlerOn: html
	html heading level: 3; with: 'Default request handler'.
	html form: [
		html paragraph: [
			html select
				beOptional;
				optionalLabel: '(none)';
				list: self dispatcher handlers keysSortedSafely;
				on: #defaultName of: self dispatcher.
			html space.
			html submitButton
				text: 'Set' ] ]