updating
updateRoot: anHtmlRoot
	super updateRoot: anHtmlRoot.
	anHtmlRoot title: 'Welcome to Seaside'.
	anHtmlRoot link beShortcutIcon; url: WAToolFiles / #faviconIco.
	anHtmlRoot stylesheet url: WAToolFiles / #handlerCss.
	WAWelcomeFiles default updateRoot: anHtmlRoot