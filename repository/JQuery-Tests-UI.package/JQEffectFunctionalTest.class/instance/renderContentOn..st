rendering
renderContentOn: html
	self renderBoxOn: html.
	html paragraph class: 'actions'; with: [
		#(bounce shake highlight shrink grow target) do: [ :each | 
			html anchor
				onClick: (self perform: each asMutator with: (html jQuery: #box) effect);
				with: each ] ]