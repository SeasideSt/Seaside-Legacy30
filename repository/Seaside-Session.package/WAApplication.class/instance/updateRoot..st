updating
updateRoot: anHtmlRoot
	self libraries do: [ :each | each default updateRoot: anHtmlRoot ]