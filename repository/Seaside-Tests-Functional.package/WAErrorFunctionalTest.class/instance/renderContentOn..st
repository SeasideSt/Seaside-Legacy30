rendering
renderContentOn: html
	html div class: 'errorTest'; with: [
		self renderHandlerConfigurationOn: html.
		self renderHaltOn: html.
		self renderErrorOn: html.
		self renderErrorWithCallOn: html.
		self renderResumableErrorOn: html.
		self renderWarningOn: html.
		self renderDeprecatedOn: html.
		self renderNilOn: html.
		self renderObjectOn: html ]