rendering
renderFile: fileName on: html
	html tableData: [
		html anchor
			class: 'download';
			url: (self urlFor: fileName);
			with: fileName ].
	html tableData: [
		html anchor
			callback: [ self library removeFile: fileName ];
			with: 'remove'.
		html space.
		html anchor
			callback: [ renamingFile := fileName ];
			with: 'rename' ]