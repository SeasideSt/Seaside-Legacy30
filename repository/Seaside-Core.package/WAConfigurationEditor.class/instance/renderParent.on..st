rendering-ancestry
renderParent: aConfiguration on: html
	html text: aConfiguration name; space.
	(configuration hasMutableAncestry and: [ configuration ancestors includes: aConfiguration]) ifTrue: [
		html anchor
			callback: [ configuration removeAncestor: aConfiguration ];
			with: '(remove)' ]