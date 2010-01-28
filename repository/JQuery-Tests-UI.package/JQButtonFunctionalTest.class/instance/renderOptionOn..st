rendering
renderOptionOn: html
	html span
		script: (html jQuery this buttonset);
		with: [ 
			html radioGroup
				selected: repeat; 
				callback: [ :value | repeat := value ];
				with: [ :group |
					#('ui-icon-refresh' 'ui-icon-shuffle' 'ui-icon-transfer-w-e') do: [ :each |
						group radioButton
							class: each;
							value: each ] ] ]