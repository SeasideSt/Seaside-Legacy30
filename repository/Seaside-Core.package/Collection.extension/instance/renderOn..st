*Seaside-Core
renderOn: html
	self do: [ :each | each renderOn: html ]