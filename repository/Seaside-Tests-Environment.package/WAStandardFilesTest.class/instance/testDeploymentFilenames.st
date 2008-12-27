testing
testDeploymentFilenames
	| expected actual |
	expected := #(kalseyTabsCss windowCss).
	actual := WAStandardFiles new fileSelectors.
	"VW does not implement #= in Sets"
	self assert: actual size = expected size.
	expected do: [ :each |
		self assert: (expected includes: each)]