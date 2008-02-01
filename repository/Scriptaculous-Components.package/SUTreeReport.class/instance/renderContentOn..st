rendering
renderContentOn: html
	uid := html nextId.
	uids := IdentityDictionary new.
	html table 
		id: uid;
		cellspacing: 0;
		class: self cssClass;
		with: [ self renderTableOn: html ]