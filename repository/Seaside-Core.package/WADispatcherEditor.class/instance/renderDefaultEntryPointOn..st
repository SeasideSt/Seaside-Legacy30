rendering-parts
renderDefaultEntryPointOn: html
	html heading
		level3;
		with: 'Default entry point'.
	html form: [
		html select
			beOptional;
			optionalLabel: '(none)';
			list: self dispatcher entryPoints keysSortedSafely;
			on: #defaultName of: dispatcher.
		html space.
		html submitButton ]