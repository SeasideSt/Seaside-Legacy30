rendering
renderHandlerConfigurationOn: html
	| attribute |
	attribute := self application configuration
		attributeAt: #exceptionHandler
		ifAbsent: [
			html paragraph: 'Exception handler configuration attribute not found!'.
			^ self ].

	html form: [
		html div: [
			html select
				beOptional;
				optionalLabel: '(inherited default)';
				list: attribute options asArray;
				selected: (self application configuration at: attribute key);
				callback: [ :value | self application configuration takeValue: value forAttribute: attribute ].
			html submitButton with: 'Set Handler' ] ]