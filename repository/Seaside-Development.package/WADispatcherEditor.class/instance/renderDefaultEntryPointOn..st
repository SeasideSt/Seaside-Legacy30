rendering-parts
renderDefaultEntryPointOn: html
	html heading level: 3; with: 'Default entry point'.
	html form: [
		html select
			beOptional;
			optionalLabel: '(none)';
			list: self handler entryPoints keysSortedSafely;
			on: #defaultName of: self handler.
		html space.
		html submitButton ]