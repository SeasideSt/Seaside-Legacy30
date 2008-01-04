rendering
renderContentOn: html
	uids := IdentityDictionary new.
	html table class: self cssClass; cellspacing: 0; with: [
		html tableHead: [ self renderHeadOn: html ].
		html tableBody: [ self renderBodyOn: html ] ]