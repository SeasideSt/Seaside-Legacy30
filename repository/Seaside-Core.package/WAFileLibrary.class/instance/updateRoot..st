processing
updateRoot: anHtmlRoot
	"Only override if you want to automatically include new types of resources. The default implementation knows how to reference CSS, JS and FavIcons into anHtmlRoot."

	self selectorsToInclude do: [ :each |
		(each endsWith: #Js)
			ifTrue: [ anHtmlRoot javascript url: (self urlOf: each) ].
		(each endsWith: #Ico)
			ifTrue: [ anHtmlRoot link beShortcutIcon; url: (self urlOf: each) ].
		(each endsWith: #Css)
			ifTrue: [ anHtmlRoot stylesheet url: (self urlOf: each) ] ]