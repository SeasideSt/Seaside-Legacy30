testing-tags-forms
testSelectTag
	self
		assert: [ :html | html select ]
		gives: '<select name="1"></select>'.
	self
		assert: [ :html | html select list: #(1 2) ]
		gives: '<select name="1"><option>1</option><option>2</option></select>'.
	self
		assert: [ :html | html select list: #(1 2); labels: [ :v | 2 * v ] ]
		gives: '<select name="1"><option>2</option><option>4</option></select>'.
	self
		assert: [ :html | html select list: #(1 2); enabled: [ :v | v even ] ]
		gives: '<select name="1"><option disabled="disabled">1</option><option>2</option></select>'.
	self
		assert: [ :html | html select list: #(1 2); callback: [ :v | ] ]
		gives: '<select name="1"><option value="2">1</option><option value="3">2</option></select>'