rendering
renderContentOn: html 
	self renderExplanationOn: html.
	html unorderedList: [
		1 to: 5000 do: [ :each | 
			html listItem: [
				html anchor
					name: each seasideString;
					callback: [
						self inform: each.
						self session jumpToAnchor: each seasideString ];
					with: each ] ] ]