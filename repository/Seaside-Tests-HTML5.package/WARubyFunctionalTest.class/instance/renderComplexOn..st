rendering
renderComplexOn: html
	html heading level2; with: 'Complex ruby markup'.
	html ruby: [
		html rubyBaseContainer: [
			html rubyBase: 10.
			html rubyBase: 31.
			html rubyBase: 2002 ].
		html rubyTextContainer: [
			html rubyText: 'Month'.
			html rubyText: 'Day'.
			html rubyText: 'Year' ].
		html rubyTextContainer: [
			html rubyText
				span: 3;
				with: 'Expiration Date' ] ]