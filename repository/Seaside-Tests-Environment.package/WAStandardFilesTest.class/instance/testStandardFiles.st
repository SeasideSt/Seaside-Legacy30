testing
testStandardFiles
	| actual expected |
	actual := WAStandardFiles new filenames.
	expected := #( 'kalseyTabs.css' 'window.css' ).
	"VW does not implement #= in Collection because you don't want that"
	self assert: actual size = expected size.
	expected do: [ :each |
		self assert: (actual includes: each) ]