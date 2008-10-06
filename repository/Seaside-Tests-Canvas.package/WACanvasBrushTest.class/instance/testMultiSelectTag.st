testing-tags-forms
testMultiSelectTag
	self
		assert: [ :html | html multiSelect ]
		gives: '<select multiple="multiple" name="1"></select>'.
	self
		assert: [ :html | html multiSelect list: #(1 2) ]
		gives: '<select multiple="multiple" name="1"><option>1</option><option>2</option></select>'.
	self
		assert: [ :html | html multiSelect list: #(1 2); labels: [ :v | 2 * v ] ]
		gives: '<select multiple="multiple" name="1"><option>2</option><option>4</option></select>'.
	self
		assert: [ :html | html multiSelect list: #(1 2); enabled: [ :v | v even ] ]
		gives: '<select multiple="multiple" name="1"><option disabled="disabled">1</option><option>2</option></select>'.
	self
		assert: [ :html | html multiSelect list: #(1 2); callback: [ :v | ] ]
		gives: '<input name="1" type="hidden" class="hidden"/><select multiple="multiple" name="2"><option value="3">1</option><option value="4">2</option></select><input name="5" type="hidden" class="hidden"/>'