rendering
renderContentOn: html
	html textInput 
		value: color;
		onFocus: (html jQuery this colorpicker
			onSubmit: (html jQuery ajax
				callback: [ :value | color := value ]
				value: (html jQuery this value)))