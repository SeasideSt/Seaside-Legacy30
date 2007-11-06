rendering
renderContentOn: html
	html strong: 'Loaded versions:'.
	html unorderedList
		with: [MCWorkingCopy allManagers
				do: [:ea |
					html listItem: [
						html anchor callback: [self newVersion: ea]; with: 'Save'.
						html space.
						html text: ea description]]].

	html form
		multipart;
		with: [
			html strong: 'Load version from file: '.
			html break.
			html fileUpload callback: [:f | file := f].
			html space.
			html submitButton callback: [self loadFile]; text: 'Load'.
	].
	html form
		with: [
			html strong: 'Load version from URL: '.
			html break.
			html textInput size: 60; value: 'http://'; callback: [:u | url := u].
			html space.
			html submitButton callback: [self loadURL]; text: 'Load'.
	].
	html anchor callback: [self saveImage]; with: 'Save Image'