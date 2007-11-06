rendering-visitors
visitStringAttribute: anAttribute with: html
	html textInput
		callback: [ :value | configuration takeValue: (anAttribute valueFromString: value) forAttribute: anAttribute ];
		value: (configuration valueForAttribute: anAttribute)