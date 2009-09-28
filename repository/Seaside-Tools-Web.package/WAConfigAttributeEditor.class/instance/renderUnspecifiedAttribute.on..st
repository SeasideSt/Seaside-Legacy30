rendering
renderUnspecifiedAttribute: anAttribute on: html
	(WAUserConfigurationEditorVisitor
		configuration: self configuration
		canvas: html)
			start: anAttribute