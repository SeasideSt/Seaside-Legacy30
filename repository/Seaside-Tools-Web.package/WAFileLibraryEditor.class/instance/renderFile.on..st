rendering
renderFile: fileName on: html
	html tableData: [
		html anchor
			class: 'download';
			url: (self urlFor: fileName);
			with: fileName ].
	html tableData: [
		html anchor
			onClick: 'return confirm("Really remove this file?")';
			callback: [ self library removeFile: fileName ];
			with: 'Remove'.
		html space.
		html anchor
			callback: [ renamingFile := fileName ];
			with: 'Rename' ]