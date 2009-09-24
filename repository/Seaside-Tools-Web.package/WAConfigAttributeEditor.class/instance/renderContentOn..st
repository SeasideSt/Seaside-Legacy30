rendering
renderContentOn: html
	self renderGroup: [
		html table: [
				attributes
					do: [ :attribute | self renderAttribute: attribute on: html ] ] ] named: (self labelForSelector: group) on: html 