rendering
renderOptionOn: html
	html span
		script: (html jQuery this buttonset);
		with: [ 
			html radioGroup
				selected: number; 
				callback: [ :value | number := value ];
				with: [ :group |
					#(1 2 3) do: [ :each |
						group radioButton
							onChange: (html javascript alert: 'hallo');
							id: html nextId;
							value: each.
						html label
							for: html lastId;
							with: each ] ] ]