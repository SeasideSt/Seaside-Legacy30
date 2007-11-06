rendering
renderRenameFormForFile: fileName on: html
	html tableData colSpan: 2; with: [
		html form: [
			html textInput
				value: fileName;
				callback: [ :value | newName := value ].
			html submitButton
				callback: [
					self library renameFile: fileName to: newName.
					renamingFile := nil ];
			 	text: 'rename'.
			html cancelButton
				callback: [ renamingFile := nil ];
				text: 'cancel' ] ]