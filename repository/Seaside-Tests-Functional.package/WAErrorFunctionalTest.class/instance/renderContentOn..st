rendering
renderContentOn: html
	html div class: 'errorTest'; with: [
		self renderHaltOn: html.
		self renderErrorOn: html.
		self renderResumableErrorOn: html.
		self renderWarningOn: html.
		self renderDeprecatedOn: html ]