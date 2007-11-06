rendering
renderLibrariesOn: html
	html heading level2 with: 'Libraries'.
	self libraryOptions isEmpty ifFalse: [
		html text: 'Add Library: '.
		html select
			list: self libraryOptions;
			selected: nil;
			callback: [ :value | library := value ].
		html space.
		html submitButton
			callback: [ self addLibrary ];
			text: 'Add' ].
	html unorderedList: [
		application libraries do: [ :each |
			html listItem: [
				html text: each.
				html space.
				html anchor
					callback: [ application removeLibrary: each ];
					with: '(remove)' ] ] ].
	html submitButton
		text: 'write to disk';
		title: 'writes all the libraries to disk';
		callback: [ application writeLibrariesToDisk ]