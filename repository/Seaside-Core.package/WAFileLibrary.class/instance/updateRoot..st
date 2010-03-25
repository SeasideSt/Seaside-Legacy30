processing
updateRoot: anHtmlRoot
	"Only override if you want to automatically include new types of resources. The default implementation knows how to reference CSS, JS and FavIcons into anHtmlRoot."

	self selectorsToInclude do: [ :each |
		(each endsWithSubCollection: #Js)
			ifTrue: [ anHtmlRoot javascript url: (self urlOf: each) ].
		(each endsWithSubCollection: #Ico)
			ifTrue: [ anHtmlRoot link beShortcutIcon; url: (self urlOf: each) ].
		(each endsWithSubCollection: #Css)
			ifTrue: [ anHtmlRoot stylesheet url: (self urlOf: each) ] ]