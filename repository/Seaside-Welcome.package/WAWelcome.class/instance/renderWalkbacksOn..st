rendering
renderWalkbacksOn: html
	| enabled |
	enabled := (WAAdmin applicationExceptionHandlingDefaults at: #exceptionHandler) = WAWalkbackErrorHandler.
	html paragraph: [
		html text: 'Error walkbacks: [ '.
		self callback: [ WAAdmin applicationExceptionHandlingDefaults at: #exceptionHandler put: WAWalkbackErrorHandler ] labeled: 'enable' on: html if: enabled not.
		html text: ' / '.
		self callback: [ WAAdmin applicationExceptionHandlingDefaults at: #exceptionHandler put: WAHtmlErrorHandler ] labeled: 'disable' on: html if: enabled.
		html text: ' ]' ]