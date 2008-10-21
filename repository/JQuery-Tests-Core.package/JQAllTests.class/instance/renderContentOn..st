rendering
renderContentOn: html
	html div id: 'wrapper'; with: [
		html div id: 'banner'; with: [ 
			self renderLogoOn: html.
			self renderNavigationOn: html ].
		html div id: 'content-wrapper'; with: [
			html div id: 'content'; with: [
				html div class: 'content-top'.
				html div class: 'content'; with: [
					self renderHeadOn: html.
					self renderBodyOn: html.
					self renderFootOn: html ] ] ] ]