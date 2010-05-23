updating
updateRoot: anHtmlRoot
	super updateRoot: anHtmlRoot.

	anHtmlRoot link beShortcutIcon; url: WAToolFiles / #faviconIco.
	anHtmlRoot stylesheet url: WAToolFiles / #handlerCss.
	WAWelcomeFiles default updateRoot: anHtmlRoot.
