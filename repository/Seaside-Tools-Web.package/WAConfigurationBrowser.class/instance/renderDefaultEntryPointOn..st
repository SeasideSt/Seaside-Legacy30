rendering-parts
renderDefaultEntryPointOn: html
	html heading level: 3; with: 'Default entry point'.
	html form: [
		html paragraph: [
			html select
				beOptional;
				optionalLabel: '(none)';
				list: self dispatcher entryPoints keysSortedSafely;
				on: #defaultName of: self dispatcher.
			html space.
			html submitButton
				text: 'Set' ] ]