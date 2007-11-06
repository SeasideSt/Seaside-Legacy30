processing
updateRoot: aHtmlRoot
	"Only override if you want to automatically include new types of resources. The default implementation knows how to reference CSS, JS and FavIcons into aHtmlRoot."

	self selectorsToInclude do: [ :each |
		(each endsWith: #Js)
			ifTrue: [ aHtmlRoot javascript url: (self urlOf: each) ].
		(each endsWith: #Ico)
			ifTrue: [ aHtmlRoot link beShortcutIcon; url: (self urlOf: each) ].
		(each endsWith: #Css)
			ifTrue: [ aHtmlRoot stylesheet url: (self urlOf: each) ] ]