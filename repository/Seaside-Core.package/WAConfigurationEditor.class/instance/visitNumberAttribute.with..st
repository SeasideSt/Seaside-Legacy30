rendering-visitors
visitNumberAttribute: anAttribute with: html
	html textInput
		size: 5;
		callback: [ :value | configuration takeValue: value asNumber forAttribute: anAttribute ];
		value: (configuration valueForAttribute: anAttribute)